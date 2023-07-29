import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';

import '../const.dart';

class CustomDiscountWidget extends StatelessWidget {
  CustomDiscountWidget({Key? key,  required this.product}) : super(key: key);
  Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, detailsScranRoute, arguments: product);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Container(
            width: 200,
            height: 290,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  product.thumbnail,
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        color: Colors.red,
                        height: 17,
                        child: Text(
                          'Up to${product.discountPercentage}% off',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Deal',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(product.title),
                )
              ],
            )),
      ),
    );
  }
}
