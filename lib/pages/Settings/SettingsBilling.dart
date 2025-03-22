import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SettingsBilling(BuildContext context) {

  const List<String> options = [
    "Card number",
    "Card holder name",
    "CVC",
    "Expiry Day",
    "Billing Address",
    "Postal Code"
  ];

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("Billing Settings", style: TextStyle(
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
      TextButton(onPressed: (){}, child: Text("Save"))
    ],

  );
}