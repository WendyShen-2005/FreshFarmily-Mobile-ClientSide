import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  IconData icon;
  String name;

  SettingOption({required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: Row(
      children: [
        Icon(icon),
        Text(name)
      ],
    ));
  }


}

Widget SettingsMenu(BuildContext context) {

  List<SettingOption> options = [
    SettingOption(icon: Icons.person, name: "Account"),
    SettingOption(icon: Icons.lock, name: "Privacy & Security"),
    SettingOption(icon: Icons.wallet, name: "Billing"),
  ];

  return Column(
    children: [
      Text("Settings"),
      Column(
        children: options.map((option) => option.build(context)).toList()
      )
    ],
  );
}