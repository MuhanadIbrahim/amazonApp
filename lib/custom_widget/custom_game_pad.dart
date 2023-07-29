import 'package:flutter/material.dart';
class gamepadRow extends StatelessWidget {
  const gamepadRow({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Video games and exclusive in-game\ncontent,FREE for 30 days with Prime',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/gamepad.jpg',
            width: 80,
          )
        ],
      ),
    );
  }
}
