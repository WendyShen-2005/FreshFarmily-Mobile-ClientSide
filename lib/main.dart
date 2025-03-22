import 'package:flutter/material.dart';
import 'package:untitled3/FakeVendorDatabase/VendorsDatabase.dart';
import 'package:untitled3/SharedComponents/BottomNavBar.dart';
import 'package:untitled3/pages/LoginSignupComponents/LoginPage.dart';
import 'package:untitled3/pages/LoginSignupComponents/LoginSignupViaButt.dart';
import 'package:untitled3/pages/MyOrders/ConfirmingOrder.dart';
import 'package:untitled3/pages/MyOrders/DeliveryProgress.dart';
import 'package:untitled3/pages/MyOrders/RateOrder.dart';
import 'package:untitled3/pages/Search/MainSearch.dart';
import 'package:untitled3/pages/Search/ProductSelected.dart';
import 'package:untitled3/pages/Search/VendorSelected.dart';
import 'package:untitled3/pages/Settings/SettingsAccount.dart';
import 'package:untitled3/pages/Settings/SettingsBilling.dart';
import 'package:untitled3/pages/Settings/SettingsMenu.dart';
import 'package:untitled3/pages/Settings/SettingsPrivacyAndSecurity.dart';

void main() =>
    runApp(MaterialApp(
      home:Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("FreshFarmily - Customer Side"),
    ),
    body: Column(
      children: [
      //   Container(
      //     height: 725,
      //     child:
      //       mainSearch(),
      //   ),
      //   VendorSelected(vendor: vendors[0]).build(context),
      //   productSelected(product: vendors[0].products[0]).build(context),
      //   ConfirmingOrder(context),
      //   Deliveryprogress(),
      //   SettingsMenu(context),
      //   SettingsAccount(context),
        SettingsBilling(context),
        Spacer(),
        bottomNavBar().build(context),
      ],
    ),
    );
  }
}
