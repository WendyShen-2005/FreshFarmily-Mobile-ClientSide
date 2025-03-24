import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myorders extends StatefulWidget {
  const Myorders({super.key});

  @override
  State<Myorders> createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {

  List<order> my_orders = [
    order(vendorName: "Daniel's Good Stuff", productName: "Eggs", imgUrl: "https://theheirloompantry.co/wp-content/uploads/2022/05/how-to-cook-sunny-side-up-eggs-the-heirloom-pantry-1.jpg", delivered: "In progress...", rating:"In progress..."),
    order(vendorName: "Daniel's Good Stuff", productName: "Brown Eggs", imgUrl: "https://theheirloompantry.co/wp-content/uploads/2022/05/how-to-cook-sunny-side-up-eggs-the-heirloom-pantry-1.jpg", delivered: "In progress...", rating:"In progress..."),
    order(vendorName: "Daniel's Good Stuff", productName: "White Eggs", imgUrl: "https://theheirloompantry.co/wp-content/uploads/2022/05/how-to-cook-sunny-side-up-eggs-the-heirloom-pantry-1.jpg", delivered: "In progress...", rating:"In progress..."),
    order(vendorName: "Daniel's Good Stuff", productName: "Milk", imgUrl: "https://theheirloompantry.co/wp-content/uploads/2022/05/how-to-cook-sunny-side-up-eggs-the-heirloom-pantry-1.jpg", delivered: "In progress...", rating:"In progress..."),
    order(vendorName: "Daniel's Good Stuff", productName: "Milk", imgUrl: "https://theheirloompantry.co/wp-content/uploads/2022/05/how-to-cook-sunny-side-up-eggs-the-heirloom-pantry-1.jpg", delivered: "March 25, 2024", rating:"3/5"),
    order(vendorName: "Daniel's Good Stuff", productName: "Milk", imgUrl: "https://theheirloompantry.co/wp-content/uploads/2022/05/how-to-cook-sunny-side-up-eggs-the-heirloom-pantry-1.jpg", delivered: "March 24, 2024", rating:"5/5"),
    order(vendorName: "Daniel's Good Stuff", productName: "Milk", imgUrl: "https://theheirloompantry.co/wp-content/uploads/2022/05/how-to-cook-sunny-side-up-eggs-the-heirloom-pantry-1.jpg", delivered: "March 23, 2024", rating:"0/5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 150,
      child: ListView(
        children: my_orders.map((orderItem) =>
          orderItem.build(context)
        ).toList(),
      ),
    );
  }
}

class order {
  String productName;
  String vendorName;
  String imgUrl;
  String delivered;
  String rating;

  order({required this.rating, required this.productName, required this.imgUrl, required this.delivered, required this.vendorName});
  
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        if(delivered == "In progress...") {
          Navigator.pushNamed(context, '/orders-progress');
        } else {
          Navigator.pushNamed(context, '/orders-rate');
        }
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(imgUrl, width: 100,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productName),
              Text(delivered),
              Text("My rating: $rating")
            ],
          )
        ],
      ),
    );
  }
}