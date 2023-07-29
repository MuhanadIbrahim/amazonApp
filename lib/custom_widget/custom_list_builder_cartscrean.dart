import 'package:flutter/material.dart';
import '../Cart_items.dart';
import '../const.dart';
import '../screans/models/Product_Model.dart';

ListView customListBuildercartscrean(sum, sumPrice) {
  var sum = 0;
  var sumPrice = 0;

  for (var element in cartItems) {
    sum += element.count;
  }
  for (var element in cartItems) {
    sumPrice += element.product.price * element.count;
  }
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: cartItems.length,
    itemBuilder: (context, index) {
      Product product = cartItems.elementAt(index).product;
      CartItem cartItem = cartItems.elementAt(index);
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 290,
              width: 378,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                children: [
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
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Implement the functionality for "Delete" button
                          // e.g., remove the item from the cart list
                        },
                        child: const Text('Delete'),
                      ),
                      const SizedBox(width: 8),
                      StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      cartItem.count--;
                                     
                                    });
                                  },
                                ),
                                Text(
                                    '${cartItem.count}'), // Display the count here
                                IconButton(
                                  icon: const Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      cartItem.count++;
                                     
                                    });
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement the functionality for "Save for Later" button
                          // e.g., move the item to a "Saved for Later" list
                        },
                        child: const Text('Save for Later'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
}
