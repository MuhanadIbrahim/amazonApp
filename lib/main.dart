import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traing_store_app_vscode/const.dart';
import 'package:traing_store_app_vscode/screans/models/cart_screan.dart';
import 'package:traing_store_app_vscode/screans/models/catgeroy_screan.dart';
import 'package:traing_store_app_vscode/screans/models/computer.dart';
import 'package:traing_store_app_vscode/screans/models/details_screan.dart';
import 'package:traing_store_app_vscode/screans/models/fragrances.dart';
import 'package:traing_store_app_vscode/screans/models/groceries.dart';
import 'package:traing_store_app_vscode/screans/models/home_decoration.dart';
import 'package:traing_store_app_vscode/screans/models/home_page.dart';
import 'package:traing_store_app_vscode/screans/models/mobiles_screan.dart';
import 'package:traing_store_app_vscode/screans/models/payment_screan.dart';
import 'package:traing_store_app_vscode/screans/models/profile_screan.dart';
import 'package:traing_store_app_vscode/screans/models/search_screan.dart';
import 'package:traing_store_app_vscode/screans/models/selected_payment_screan.dart';
import 'package:traing_store_app_vscode/screans/models/skin_care.dart';
import 'package:traing_store_app_vscode/screans/models/track_order_screan.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => DetailsScrean(),
    child:  amazonApp(),
  ));
}

class amazonApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homeRoute,
      routes: {
        mobileRoute: (context) =>  MobileScrean(),
        homeRoute: (context) => const HomePage(),
        computerRoute: (context) =>  ComputerScrean(),
        fragnacesRoute: (context) =>  FragrancesScrean(),
        skinCareRoute: (context) =>  SkinCareScrean(),
        gerociesRoute: (context) =>  GroceriesScrean(),
        decorationRoute: (context) =>  HomeDecoration(),
        detailsScranRoute: (context) => DetailsScrean(),
        searchpageRoute: (context) => const SerachPage(),
        cartscreanRoute: (context) => const CartScrean(),
        selectedpaymentRoute: (context) => const SelectedPaymentScrean(),
        paymentRoute: (context) =>  const PaymentScreen(),
        trackorderRoute:(context) => const TrackOrderScrean(),
        catgeroyRoute:(context) =>  CatgeroyScrean(),
        profileRoute:(context) => ProfileScrean(),
      },
    );
  }
}
