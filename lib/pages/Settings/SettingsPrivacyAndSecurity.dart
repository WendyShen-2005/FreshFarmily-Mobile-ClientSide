import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPrivacyAndSecurity extends StatefulWidget {
  const SettingsPrivacyAndSecurity({super.key});

  @override
  State<SettingsPrivacyAndSecurity> createState() => _SettingsPrivacyAndSecurityState();
}

class _SettingsPrivacyAndSecurityState extends State<SettingsPrivacyAndSecurity> {

  List<String> options = [
    "Password",
    "Security Question 1",
    "Securiy Question 1 Answer",
    "Security Question 2",
    "Securiy Question 2 Answer",
    "Security Question 3",
    "Securiy Question 3 Answer",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Privacy & Security Settings", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),
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
        TextButton(onPressed: () {}, child: Text("Save"))
      ],

    );
  }
}