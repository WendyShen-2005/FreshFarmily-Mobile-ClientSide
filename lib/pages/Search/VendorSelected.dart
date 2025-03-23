import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/FakeVendorDatabase/Vendors.dart';
import 'package:untitled3/pages/Search/MainSearch.dart';

class VendorSelected extends StatefulWidget {
  Vendor vendor;
  VendorSelected({required this.vendor});

  @override
  State<VendorSelected> createState() => _VendorSelectedState();
}

class _VendorSelectedState extends State<VendorSelected> {
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
            Text(widget.vendor.businessName)
          ],
        ),
        Image.network(widget.vendor.bannerUrl),
        Text(widget.vendor.description),
        Column(
          children: widget.vendor.products.map((product) =>
            productListing(prod: product).build(context)
          ).toList(),
        )
      ],
    );
  }
}