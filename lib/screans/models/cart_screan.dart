import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_nav_bar.dart';

import '../../Cart_items.dart';
import '../../const.dart';
import '../../custom_widget/custom_app_bar.dart';
import '../../custom_widget/custom_list_builder_cartscrean.dart';
import 'Product_Model.dart';

class CartScrean extends StatefulWidget {
  const CartScrean({Key? key}) : super(key: key);

  @override
  State<CartScrean> createState() => _CartScreanState();
}

class _CartScreanState extends State<CartScrean> {
  @override
  Widget build(BuildContext context) {
    var sum = 0;
    var sumPrice = 0;
    void initState() {
      super.initState();
      sum;
      sumPrice;
    }

    for (var element in cartItems) {
      sum += element.count;
    }
    for (var element in cartItems) {
      sumPrice += element.product.price * element.count;
    }
    setState(() {
      sum;
      sumPrice;
    });
    return cartItems.isEmpty
        ? Scaffold(
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(62),
              child: CustomAppBar(),
            ),
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        child: Image.asset(
                            'assets/WhatsApp Image 2023-06-21 at 18.43.09.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Your Amazon cart is empty'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'See recommendations',
                            style: TextStyle(color: Color(0xff287184)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.error_outline,
                          size: 30,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Did you Know?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Swip left on an item you saved for later to move it \nto your cart. ',
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 339,
                ),
                CustomNavBar(),
              ],
            ),
          )
        : Scaffold(
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(62),
              child: CustomAppBar(),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('SubTotal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 27)),
                      ),
                      const Text(
                        'EGP',
                      ),
                      Text(
                        '$sumPrice',
                        style: const TextStyle(fontSize: 35),
                      ),
                      const Text(
                        '00',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, selectedpaymentRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.yellow[600],
                      ),
                      height: 50,
                      width: 375,
                      child: Center(
                        child: Text(
                          'Proceed to Buy (${sum}items)',
                          style: const TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    height: 1.0,
                    color: Colors.grey,
                  ),
                ),
                //  customListBuildercartscrean(sum, sumPrice),
                ListView.builder(
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
                            height: 230,
                            width: 378,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[100],
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                              style:
                                                  TextStyle(color: Colors.grey),
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
                                    Container(
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
                                                if (cartItem.count > 1) {
                                                  cartItem.count--;
                                                } else {
                                                  cartItems.remove(cartItem);
                                                }
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
                                    ),
                                    const SizedBox(width: 8),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white),
                                      onPressed: () {
                                        // Implement the functionality for "Delete" button
                                        // e.g., remove the item from the cart list
                                        setState(() {
                                          cartItems.remove(cartItem);
                                        });
                                      },
                                      child: const Text(
                                        'Delete',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white),
                                      onPressed: () {
                                        // Implement the functionality for "Save for Later" button
                                        // e.g., move the item to a "Saved for Later" list
                                      },
                                      child: const Text(
                                        'Save for Later',
                                        style: TextStyle(color: Colors.black),
                                      ),
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
                )
              ],
            )),
          );
  }
}
