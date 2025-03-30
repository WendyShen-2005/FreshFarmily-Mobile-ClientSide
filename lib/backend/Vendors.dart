import 'dart:ui';

class Order {
  String vendorName, productName, imgUrl, delivered, rating;
  Order({required this.vendorName, required this.productName, required this.imgUrl,
    required this.delivered, required this.rating});
  /*
      order(vendorName: "Daniel's Good Stuff",
      productName: "Eggs", imgUrl: "https://theheirloompantry.co/wp-content/uploads/2022/05/how-to-cook-sunny-side-up-eggs-the-heirloom-pantry-1.jpg",
      delivered: "In progress...", rating:"In progress..."),

   */
  toJson() {
    return {
      "vendorName":vendorName,
      "productName":vendorName,
      "imgUrl":imgUrl,
      "delivered":delivered,
      "rating":rating
    };
  }
}

class Vendor {
  String owner;
  String businessName;
  List<Product> products;
  String bannerUrl;
  String description;

  Vendor({required this.description, required this.owner, required this.businessName, required this.products, required this.bannerUrl});
}

class Product {
  String name;
  List<String> imgs;
  String description;
  double cost; //cost per unit
  String unit;
  int numLeft;

  Product({required this.name, required this.imgs, required this.description,
    required this.cost, required this.unit, required this.numLeft});
}