import 'package:flutter/material.dart';
import 'package:untitled3/backend/Vendors.dart';
import 'package:untitled3/FakeVendorDatabase/VendorsDatabase.dart';
import 'package:untitled3/backend/db_service.dart';

class orderDetails extends StatelessWidget{
  Product product;
  double units;
  double cost = 0;
  String deliveryLocation;

  orderDetails({super.key, required this.product, required this.units, required this.deliveryLocation}){
    cost = product.cost * units;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(product.name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          Text("Total cost: \$$cost for $units ${product.unit}",
            style: TextStyle(
              fontSize: 20
            ),
          ),
          Text("Delivery location: $deliveryLocation",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

}

class ConfirmingOrder extends StatefulWidget {
  const ConfirmingOrder({super.key});

  @override
  State<ConfirmingOrder> createState() => _ConfirmingOrderState();
}

class _ConfirmingOrderState extends State<ConfirmingOrder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Please confirm your order:",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        orderDetails(product: vendors[0].products[0],
            units: 10,
            deliveryLocation: "123 Blah street, A1B 2C3"),
        TextButton(onPressed: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/orders-list');
          createOrder(
            Order(vendorName: "The Best Farmer",
                productName: "Salmon",
                imgUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Salmo_salar.jpg/220px-Salmo_salar.jpg",
                delivered: "...in progress",
                rating: "5/5")
          );
        },
          child: Text("Looks good!"),
          style: TextButton.styleFrom(
              side: BorderSide(
                  color: Colors.black,
                  width: 1
              )
          ),
        ),
        TextButton(onPressed: () {}, child: Text("Cancel"),
          style: TextButton.styleFrom(
              side: BorderSide(
                  color: Colors.black,
                  width: 1
              )
          ),
        ),
      ],
    );
  }
}