import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../FakeVendorDatabase/Vendors.dart';

class productSelected extends StatelessWidget {
  Product product;
  productSelected({required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
                TextButton(
                    onPressed: () => {},
                    child: Icon(
                      Icons.arrow_left
                    )
                ),
              Text(product.name)
            ],
          ),
          Image.network(product.imgs[0]),
          Text(product.description),
          Text("Distance: 5km, Estimated Delivery Time: 10 mins"),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Amount in ${product.unit}s"
                  ),
                ),
              ),
              Text(product.unit)
            ],
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Delivery Location"
            ),
          ),
          Text("Cost of items: \$50\nDelivery cost: \$2\nTax: \$7\nTotal cost: \$59"),
          TextButton(
              onPressed: ()=>{},
              child: Text("Purchase")
          )
        ],
      ),
    );
  }
  
}