import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:traing_store_app_vscode/Cart_items.dart';
import 'package:traing_store_app_vscode/const.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_app_bar.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_info_location_bar.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_nav_bar.dart';
import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';

class DetailsScrean extends StatelessWidget with ChangeNotifier {
  DetailsScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as Product;
    var Imag = product.images.map(
      (e) => e,
    );

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const InfoLocationBar(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          'Brand: ${product.brand}',
                          style: const TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 5.0),
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
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Flexible(
                        child: Text(
                          product.description,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 315,
                      color: Colors.blue,
                      child: ImageSlideshow(
                        indicatorBackgroundColor: Colors.white,
                        autoPlayInterval: 3000,
                        isLoop: true,
                        children: [
                          Image.network(
                            Imag.elementAt(0),
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 291,
                      left: 0,
                      right: 0,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  shape: BoxShape.circle),
                              child: const Icon(Icons.favorite_border)),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.bookmark_border,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'EGP',
                      ),
                      Text(
                        '${product.price}',
                        style: const TextStyle(fontSize: 38),
                      ),
                      const Text(
                        '00',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    'FREE Returns',
                    style: TextStyle(color: Colors.blue[600]),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('All prices include VAT.'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Buy with installments and pay EGP ${product.discountPercentage} for 60 months with select banks.',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, bottom: 12),
                  child: Row(
                    children: [
                      Text(
                        'FREE Returns',
                        style: TextStyle(color: Colors.blue[600]),
                      ),
                      const Text(
                        'Saturday,3 june',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      Text('Or fastest delivery '),
                      Text(
                        'Tomorrow, 2 june.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Order within'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    '2 hrs 9 mins',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 6.0, top: 12, bottom: 16),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Deliver to Muhanad - Damietta ',
                        style: TextStyle(fontSize: 14, color: Colors.blue[600]),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'In Stock',
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                  child: GestureDetector(
                    onTap: () {
                      any.add(product);
                     
                      if(cartItems.map((e) => e.product).contains(product)){
                        cartItems.firstWhere((element) => element.product == product).count++;
                      } else{
                        cartItems.add(CartItem(count: 1, product: product));
                      }
                
                      
                      HapticFeedback.heavyImpact();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Your items have been added successfully.'),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.yellow[600]),
                      height: 50,
                      width: 80,
                      child: const Center(
                          child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 16),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8.0, left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.yellow[800]),
                    height: 50,
                    width: 80,
                    child: const Center(
                        child: Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 16),
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'payment',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ships from',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sold by',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'secure transaction',
                          style: TextStyle(color: Colors.blue[600]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Amazon.eg',
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Amazon.eg',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const CustomNavBar()
        ],
      ),
    );
  }
}
