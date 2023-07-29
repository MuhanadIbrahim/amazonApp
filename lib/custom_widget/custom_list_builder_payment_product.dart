import 'package:flutter/material.dart';

import '../Cart_items.dart';
import '../const.dart';
import '../screans/models/Product_Model.dart';

ListView customListBuilder() {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: cartItems.length,
    itemBuilder: (context, index) {
      Product product = cartItems.elementAt(index).product;
      CartItem cartItem = cartItems.elementAt(index);
      return Column(
        children: [
          Text(
            'the product ${cartItems.indexOf(cartItem) + 1} of total ${cartItems.length}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 280,
              width: 378,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange[50],
                          border: Border.all(width: 2, color: Colors.orange)),
                      child: const Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Text(
                          ' EGP 26.00 Standard delivery - get it wendnesday 19 July',
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 5,
                    thickness: 0.5,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Estimated delivery 19 July 2023',
                      style: TextStyle(
                          color: Colors.orange[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 5,
                    thickness: 0.5,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.network(
                          product.thumbnail,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxHeight: 150,
                              maxWidth: 200,
                            ),
                            child: Text(
                              product.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EGP',
                                  style: TextStyle(
                                    color: Colors.red[900],
                                  ),
                                ),
                                Text(
                                  '${product.price}',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.red[900],
                                  ),
                                ),
                                Text(
                                  '00',
                                  style: TextStyle(
                                    color: Colors.red[900],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                'sold by:',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                product.brand,
                                style: const TextStyle(
                                  color: Color(0xff287184),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
}
