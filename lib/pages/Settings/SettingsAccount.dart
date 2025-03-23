import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsAccount extends StatefulWidget {
  const SettingsAccount({super.key});

  @override
  State<SettingsAccount> createState() => _SettingsAccountState();
}

class _SettingsAccountState extends State<SettingsAccount> {
  @override
  Widget build (BuildContext context) {
    const List<String> options = [
      "First name",
      "Last name",
      "Email",
    ];

    return Container(
      height: MediaQuery.of(context).size.height - 150,
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Account Settings", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Change profile picture: "),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network("https://th.bing.com/th/id/R.d980a3f017b2773eb4ac9faf74f2768d?rik=YJiiswoLr9THBQ&pid=ImgRaw&r=0"),
          ),
          Column(
            children: options.map((option) =>
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: option.toString(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.black
                            )
                        )
                    ),
                  ),
                ),
            ).toList(),
          ),
          TextButton(onPressed: (){}, child: Text("Save"))
        ],
      ),
    );
  }
}
