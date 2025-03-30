import 'package:cloud_firestore/cloud_firestore.dart' hide Order;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Vendors.dart';

class OrderRepository extends GetxController {

  static OrderRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createOrder(Order order) async {
    await _db.collection("Order").add(order.toJson()).whenComplete(
          () => Get.snackbar("Success", "Order has been placed",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          colorText: Colors.white),
    ).catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went wrong, please try again.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          colorText: Colors.white);
      print(error.toString());
    });
  }

}

final orderRepo = Get.put(OrderRepository());

Future <void> createOrder(Order order) async {
  await orderRepo.createOrder(order);
}
