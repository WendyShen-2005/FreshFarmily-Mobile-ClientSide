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

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({super.key});

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  List<SettingOption> options = [
    SettingOption(icon: Icons.person, name: "Account"),
    SettingOption(icon: Icons.lock, name: "Privacy & Security"),
    SettingOption(icon: Icons.wallet, name: "Billing"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Settings"),
        Column(
            children: options.map((option) => option.build(context)).toList()
        )
      ],
    );
  }
}