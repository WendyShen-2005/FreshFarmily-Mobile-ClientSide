import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
    Future<void> signup({
        required String email,
        required String password,
        required BuildContext context
    }) async {

        try {
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: password
            );

            await Future.delayed(Duration(seconds: 1));

            Navigator.pushNamed(context, '/log-out');
            Navigator.pushNamed(context, '/search');

        } on FirebaseAuthException catch(e) {
            String message = '';
            if(e.code == 'weak-password') {
                message = 'The password provided is too weak.';
            } else if(e.code == 'email-already-in-use') {
                message = 'An account already exists with that email';
            }
            Fluttertoast.showToast(
                msg: message,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.SNACKBAR,
                backgroundColor: Colors.black54,
                textColor: Colors.white,
                fontSize: 14
            );
        }
        catch(e) {

        }
    }

    Future<void> signin({
        required String email,
        required String password,
        required BuildContext context
    }) async {

        try {
            await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: email,
                password: password
            );

            await Future.delayed(Duration(seconds: 1));

            Navigator.pushNamed(context, '/log-out');
            Navigator.pushNamed(context, '/search');

        } on FirebaseAuthException catch(e) {
            String message = '';
            if(e.code == 'user-not-found') {
                message = 'No user found for that email.';
            } else if(e.code == 'wrong password') {
                message = 'Wrong password provided for that user.';
            }
            Fluttertoast.showToast(
                msg: message,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.SNACKBAR,
                backgroundColor: Colors.black54,
                textColor: Colors.white,
                fontSize: 14
            );
        }
        catch(e) {

        }
    }

    Future<void> signout({
        required BuildContext context
    }) async {
        await FirebaseAuth.instance.signOut();
        await Future.delayed(const Duration(seconds: 1));
        Navigator.pushNamed(context, '/log-in');
    }

}