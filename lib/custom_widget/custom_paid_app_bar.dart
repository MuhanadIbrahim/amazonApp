import 'package:flutter/material.dart';

class CustomPaidAppBar extends StatelessWidget {
  const CustomPaidAppBar({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'CANCEL',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        )
      ],
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
    );
  }
}
