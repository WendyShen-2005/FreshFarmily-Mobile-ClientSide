import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomNavBarButton extends StatelessWidget {
  String name;
  IconData icon;
  String route;

  bottomNavBarButton({required this.name, required this.icon, required this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => {
            Navigator.of(context).popUntil((route) => route.isFirst),
            Navigator.pushNamed(context, route),
        },
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
    bottomNavBarButton(name: "Search", icon: Icons.search, route: '/search',),
    bottomNavBarButton(name: "Track my orders", icon: Icons.delivery_dining, route:'/orders-list'),
    bottomNavBarButton(name: "Account", icon: Icons.person, route:'/settings-menu'),
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