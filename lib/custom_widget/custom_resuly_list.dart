import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';

import '../const.dart';

class CustomResultList extends StatelessWidget {
  CustomResultList({Key? key,  required this.product}) : super(key: key);
  Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.pushNamed(context, detailsScranRoute, arguments:product );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.grey.shade100,
              child: Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: double.infinity,
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
                        constraints:
                            const BoxConstraints(maxHeight: 150, maxWidth: 200),
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
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Row(
                          children: [
                            Text(
                              '${product.rating}',
                              style: TextStyle(
                                  color: Colors.blue.shade400,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0),
                              child: RatingBar.builder(
                                itemSize: 20,
                                initialRating: product.rating,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              '(62)',
                              style: TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'EGP',
                            ),
                            Text(
                              '${product.price}',
                              style: const TextStyle(fontSize: 35),
                            ),
                            const Text(
                              '00',
                            )
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            'Get it as soon as ',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Text(
                            'tomorrow, ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Text(
                            '30 May ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Fulfilled by Amazon - FREE Shipping ',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
