import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Deliveryprogress extends StatefulWidget {
  const Deliveryprogress({super.key});

  @override
  State<Deliveryprogress> createState() => _DeliveryprogressState();
}

class _DeliveryprogressState extends State<Deliveryprogress> {

  int option = 0;

  List<String> deliveryOptions = [
    "Leave at door",
    "Wait for me"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network("https://th.bing.com/th/id/OIP.LPAtS1-wxKsH6OidDDRt_gHaFj?rs=1&pid=ImgDetMain"),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Estimated delivery time: 20 minutes left"),
        ),
        TextButton(onPressed: () => setState(() {
          if(option == 0) {
            option = 1;
          } else {
            option = 0;
          }
        }),
            style: TextButton.styleFrom(
                side: BorderSide(
                    color: Colors.black,
                    width: 1
                )
            ),
            child: Text(deliveryOptions[option])),

      ],
    );  }
}
