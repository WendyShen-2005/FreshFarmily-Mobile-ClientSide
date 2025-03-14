import 'dart:ui';

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