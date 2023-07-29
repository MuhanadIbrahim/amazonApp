import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black, // Set the desired color here
      ),
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFA5E6D0),
                Color(0xFF85DAE1),
              ],
              begin: AlignmentDirectional.topEnd,
              end: AlignmentDirectional.topStart),
        ),
      ),
      title: Material(
        elevation: 10,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        shadowColor: Colors.grey,
        child: TextField(
          readOnly: true,
          onTap: () {
            Navigator.pushNamed(context, searchpageRoute);
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 1),
            hintText: 'Search Amazon.eg',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          style: const TextStyle(fontSize: 19),
        ),
      ),
    );
  }
}




