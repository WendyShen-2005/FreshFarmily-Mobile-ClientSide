import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  IconData icon;
  String name;
  String route;

  SettingOption({required this.icon, required this.name, required this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      Navigator.pushNamed(context, route);
    }, child: Row(
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
    SettingOption(icon: Icons.person, name: "Account", route:'/settings-account'),
    SettingOption(icon: Icons.lock, name: "Privacy & Security", route:'/settings-privacy-and-security'),
    SettingOption(icon: Icons.wallet, name: "Billing", route:'/settings-billing'),
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