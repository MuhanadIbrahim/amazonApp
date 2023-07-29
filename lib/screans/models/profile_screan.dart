import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_nav_bar.dart';

import '../../const.dart';
import '../../custom_widget/custom_app_bar.dart';
import '../../custom_widget/custom_list_catgeroy.dart';

class ProfileScrean extends StatefulWidget {
  @override
  State<ProfileScrean> createState() => _ProfileScreanState();
}

class _ProfileScreanState extends State<ProfileScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Hello,',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      ' Muhanad',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 60,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200]),
                      width: 180,
                      height: 55,
                      child: Center(
                        child: Text(
                          'Your Orders',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200]),
                      width: 180,
                      height: 55,
                      child: Center(
                        child: Text(
                          'Buy Again',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200]),
                      width: 180,
                      height: 55,
                      child: Center(
                        child: Text(
                          'Your Account',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200]),
                      width: 180,
                      height: 55,
                      child: Center(
                        child: Text(
                          'Your List',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 5,
                  color: Colors.grey[400],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          'Your Orders',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          cartItems.isEmpty
                              ? 'Hi, you have no recent orders.'
                              : 'Hi, track your order here',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            cartItems.isEmpty
                                ? Navigator.pushNamed(context, homeRoute)
                                : Navigator.pushNamed(context, trackorderRoute);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 370,
                            height: 70,
                            child: Center(
                                child: Text(
                              cartItems.isEmpty
                                  ? 'Return to the homepage'
                                  : 'Return to the trackpage',
                              style: TextStyle(fontSize: 19),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 5,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Buy Again',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                                width: 100,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Image.asset('assets/fragrances.jpg')),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Image.asset('assets/headphone.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child:
                                  Image.asset('assets/grociess and drink.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
          CustomNavBar()
        ],
      ),
    );
  }
}
