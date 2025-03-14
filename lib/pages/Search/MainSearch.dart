import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/FakeVendorDatabase/Vendors.dart';
import 'package:untitled3/FakeVendorDatabase/VendorsDatabase.dart';

Widget productVendorSearchSelectButt (BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
          onPressed: () => {},
          child: Text("Products")
      ),
      TextButton(
          onPressed: () => {},
          child: Text("Vendors")
      ),
    ],
  );
}

class productListing extends StatelessWidget {

  Product prod;

  productListing({super.key, required this.prod});

  @override
  Widget build (BuildContext context) {
    return Column(
      children: [
        Text(prod.name),
        Row(
          children: [
            // Image.network(
            //     prod.imgs[0]
            // ),
            Column(
              children: [
                Text(prod.description),
                Text("\$${prod.cost} \\ ${prod.unit} "),
              ],
            )
          ],
        )
      ],
    );
  }

}

Widget allProductListings(BuildContext context) {
  return Column(
      children: vendors.map((vendor) =>
          Column(
            children: vendor.products.map((product) =>
                productListing(prod: product).build(context)
            ).toList(),
          )
      ).toList());
}

Widget allVendorListings(BuildContext context) {
  return Column(
    children: vendors.map((vendor) =>
      Column(
        children: [
          // Image.network(vendor.bannerUrl),
          Text("${vendor.businessName} | ${vendor.owner}"),
          Text(vendor.description),
        ],
      )
    ).toList(),
  );
}

Widget mainSearch(BuildContext context) {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
            hintText: "Search..."
        ),
      ),
      productVendorSearchSelectButt(context),
      // allProductListings(context)
      allVendorListings(context)
    ],
  );
}