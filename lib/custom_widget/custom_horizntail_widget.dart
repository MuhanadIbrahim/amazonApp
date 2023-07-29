import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';

import '../const.dart';

class CustomhorzntailWidget extends StatelessWidget {
  CustomhorzntailWidget({Key? key, required this.product}) : super(key: key);
  Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, detailsScranRoute, arguments: product);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: 140,
            height: 190,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(product.title),
                ),
                const SizedBox(
                  height: 9,
                ),
                Image.network(product.thumbnail),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
