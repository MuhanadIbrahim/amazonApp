import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/const.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

int tappedIndex = -1;

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, homeRoute);
              setState(() {
                tappedIndex = 0;
              });
            },
            child: Icon(
              Icons.home,
              color: tappedIndex == 0 ? Color(0xff287184) : Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, profileRoute);
              tappedIndex = 1;
            },
            child: Icon(
              Icons.account_circle,
              color: tappedIndex == 1 ? Color(0xff287184) : Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, cartscreanRoute);
              tappedIndex = 2;
            },
            child: Icon(
              Icons.add_shopping_cart,
              color: tappedIndex == 2 ? Color(0xff287184) : Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, catgeroyRoute);
              tappedIndex = 3;
            },
            child: Icon(
              Icons.read_more,
              color: tappedIndex == 3 ? Color(0xff287184) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
