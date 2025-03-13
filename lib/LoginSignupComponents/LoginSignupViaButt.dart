import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginSignupViaButt {

  String name;
  IconData icon;

  LoginSignupViaButt({ required this.name, required this.icon });

}

Widget loginSignupViaButtTemplate(LoginSignupViaButt) {
  return TextButton(
      onPressed: (){},
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(
              LoginSignupViaButt.icon,
              size: 75,
            ),
            Text(
              LoginSignupViaButt.name,
              style: TextStyle(
                  fontSize: 30
              ),
            )
          ]
      )
  );
}