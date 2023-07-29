import 'package:flutter/material.dart';

class InfoLocationBar extends StatelessWidget {
  const InfoLocationBar({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFFc8f1e1),
              Color(0xFFb7e8ee),
            ],
            begin: AlignmentDirectional.topEnd,
            end: AlignmentDirectional.topStart),
      ),
      child: const Row(
        children: [
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.location_on_outlined,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Deliver to Muhanad - Damietta ',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),Icon(Icons.expand_more)
        ],
      ),
    );
  }
}
