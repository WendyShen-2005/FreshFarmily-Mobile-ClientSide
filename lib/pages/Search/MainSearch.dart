import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/FakeVendorDatabase/Vendors.dart';
import 'package:untitled3/FakeVendorDatabase/VendorsDatabase.dart';

const customYellow = Color.fromRGBO(255, 230, 0, 0.3);

Widget productVendorSearchSelectButt (BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Container(
          color: customYellow,
          child: TextButton(
              onPressed: () => {},
              child: Text("Products")
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: TextButton(
              onPressed: () => {},
              child: Text("Vendors")
          ),
        ),
      ),
    ],
  );
}

class productListing extends StatelessWidget {

  Product prod;

  productListing({super.key, required this.prod});

  @override
  Widget build (BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: Image.network(
                prod.imgs[0],

              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                prod.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Text(prod.description),
              Text("\$${prod.cost} \\ ${prod.unit} "),
              Text("15 mins delivery time")
            ],
          )
        ],
      ),
    );
  }

}

Widget allProductListings(BuildContext context) {
  List<Widget> list = [];

  for(int i = 0; i < vendors.length; i++) {
    for(int j = 0; j < vendors[i].products.length; j++) {
      list.add(productListing(prod: vendors[i].products[j]));
    }
  }
  for(int i = 0; i < vendors.length; i++) {
    for(int j = 0; j < vendors[i].products.length; j++) {
      list.add(productListing(prod: vendors[i].products[j]));
    }
  }

  return
    Container(
      height:MediaQuery.of(context).size.height,
      child: ListView(
        shrinkWrap: true,
        children: list.map((li) => Container(child: li,)).toList(),
      ),
    );
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
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
                Icons.search
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search..."
              ),
            ),
          ),
        ],
      ),
      productVendorSearchSelectButt(context),
      Container(

          color: customYellow,
          child: allProductListings(context)
        // allVendorListings(context)
      ),
    ],
  );
}