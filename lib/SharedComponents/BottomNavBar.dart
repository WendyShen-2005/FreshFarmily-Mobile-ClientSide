import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomNavBarButton extends StatelessWidget {
  String name;
  IconData icon;

  bottomNavBarButton({required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => {},
        child: Column(
          children: [
            Icon(
              icon
            ),
            Text(name),
          ],
        )
    );
  }

  
}

class bottomNavBar extends StatelessWidget {
  
  List<bottomNavBarButton> list = [
    bottomNavBarButton(name: "Search", icon: Icons.search),
    bottomNavBarButton(name: "Track my orders", icon: Icons.delivery_dining),
    bottomNavBarButton(name: "Account", icon: Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list.map((li) =>
              li.build(context)
          ).toList(),
        ),
      );
  }
}