import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/const.dart';

class CustomCatgeroyRow extends StatelessWidget {
  const CustomCatgeroyRow({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        color: Colors.white,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/Amazon-Prime.jpg.jpg',
                      width: 50,
                      height: 50,
                    ),
                    const Text('Join Prime')
                  ],
                ),
                const SizedBox(
                  width: 28,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, mobileRoute);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/smartphone.jpg',
                        width: 50,
                        height: 50,
                      ),
                      const Text('Mobiles'),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 28,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, computerRoute);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/laptop.jpg',
                        width: 50,
                        height: 50,
                      ),
                      const Text('Computers')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 28,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, fragnacesRoute);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/fragrances.jpg',
                        width: 50,
                        height: 50,
                      ),
                      const Text('fragrances')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 28,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, skinCareRoute);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/skincare.jpg',
                        width: 50,
                        height: 50,
                      ),
                      const Text('skincare')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 28,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, gerociesRoute);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/groceries.jpg',
                        width: 50,
                        height: 50,
                      ),
                      const Text('groceries')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 28,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, decorationRoute);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/homedecoration.jpg',
                        width: 50,
                        height: 50,
                      ),
                      const Text('homedecoration')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )));
  }
}
