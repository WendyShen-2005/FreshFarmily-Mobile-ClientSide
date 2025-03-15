import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/FakeVendorDatabase/Vendors.dart';
import 'package:untitled3/pages/Search/MainSearch.dart';

class VendorSelected extends StatelessWidget {
  Vendor vendor;
  VendorSelected({required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
                onPressed: () => {},
                child: Icon(
                  Icons.arrow_left
                )
            ),
            Text(vendor.businessName)
          ],
        ),
        Image.network(vendor.bannerUrl),
        Text(vendor.description),
        Column(
          children: vendor.products.map((product) =>
            productListing(prod: product).build(context)
          ).toList(),
        )
      ],
    );
  }


}