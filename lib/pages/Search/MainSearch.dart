import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/FakeVendorDatabase/Vendors.dart';
import 'package:untitled3/FakeVendorDatabase/VendorsDatabase.dart';

const customYellow = Color.fromRGBO(255, 230, 0, 0.3);

class mainSearch extends StatefulWidget {
  const mainSearch({super.key});

  @override
  State<mainSearch> createState() => _mainSearchState();
}

class _mainSearchState extends State<mainSearch> {
  int mode = 0;
  @override
  Widget build(BuildContext context) {
    if(mode == 0) {
      return SizedBox(
        height: MediaQuery.of(context).size.height - 140,
        child: Column(
          children: [
            mainSearchSearchBar(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: customYellow,
                    child: TextButton(
                        onPressed: () => setState(() {
                          mode = 0;
                        }),
                        child: Text("Products")
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: TextButton(
                        onPressed: () => setState(() {
                          mode = 1;
                        }),
                        child: Text("Vendors")
                    ),
                  ),
                ),
              ],
            ),
            allProductListings(context),
          ],
        ),
      );
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height - 140,
      child: Column(
        children: [
          mainSearchSearchBar(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  child: TextButton(
                      onPressed: () => setState(() {
                        mode = 0;
                      }),
                      child: Text("Products")
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: customYellow,
                  child: TextButton(
                      onPressed: () => setState(() {
                        mode = 1;
                      }),
                      child: Text("Vendors")
                  ),
                ),
              ),
            ],
          ),
          allVendorListings(context),
        ],
      ),
    );;
  }
}



class productListing extends StatelessWidget {

  Product prod;

  productListing({super.key, required this.prod});

  @override
  Widget build (BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/product-selected');
        },
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
      // Container(
      //   height: MediaQuery.of(context).size.height - 230,
        SizedBox(
          height: MediaQuery.of(context).size.height - 236,
          child: ListView(
            shrinkWrap: true,
            children: list.map((li) => Container(child: li,)).toList(),
                ),
        );
}

class vendorListing extends StatelessWidget {
  Vendor vendor;
  vendorListing({required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/vendor-selected');
        },
        child: Column(
          children: [
            Image.network(vendor.bannerUrl, height: 50, width: 200,),
            Text("${vendor.businessName} | ${vendor.owner}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(vendor.description),
            Text("${vendor.products.length} items, including: ${vendor.products[0]}",
              style: TextStyle(
                color: Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }

}

Widget allVendorListings(BuildContext context) {
  return
    SizedBox(
      height: MediaQuery.of(context).size.height - 236,
      child: ListView(
        shrinkWrap: true,
        children: vendors.map((vend) =>
          vendorListing(vendor: vend).build(context)
        ).toList(),
      ),
    );
}


Widget mainSearchSearchBar (BuildContext context) {
  return
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
    );
}
