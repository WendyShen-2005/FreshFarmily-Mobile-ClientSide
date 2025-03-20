import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../FakeVendorDatabase/Vendors.dart';

class productSelected extends StatelessWidget {
  Product product;
  productSelected({required this.product});

  @override
  Widget build(BuildContext context) {
    return
      ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              TextButton(
                  onPressed: () => {},
                  child: Icon(
                      Icons.arrow_left
                  )
              ),
              Text(product.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              )
            ],
          ),
          Image.network(product.imgs[0]),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(product.description),
            ),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Distance: 5km, Estimated Delivery Time: 10 mins"),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Amount in ${product.unit}s"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Delivery Location"
                ),
              ),
            ),
            Text("Cost of items: \$50\nDelivery cost: \$2\nTax: \$7\nTotal cost: \$59"),
            TextButton(
                onPressed: ()=>{},
                child: Text("Purchase")
            )
          ]
          ),
        ],
      );
  }

}