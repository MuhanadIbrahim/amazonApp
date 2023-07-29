import 'package:flutter/material.dart';

import 'custom_current_location.dart';

class CustomShippingAddress extends StatelessWidget {
  const CustomShippingAddress({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('shippingAddressContainer'),
      height: 100,
      width: 378,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding:
                EdgeInsets.only(left: 8.0, top: 10, bottom: 8),
            child: Text(
              'Get your Location by using GPS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            thickness: 0.5,
            indent: 0,
            endIndent: 0,
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              const currentLocation();
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Press the icon button to detect your location by GPS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.gps_fixed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
