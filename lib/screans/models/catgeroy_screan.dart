import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_nav_bar.dart';
import '../../const.dart';
import '../../custom_widget/custom_app_bar.dart';

class CatgeroyScrean extends StatefulWidget {
  @override
  State<CatgeroyScrean> createState() => _CatgeroyScreanState();
}

int tappedIndex = -1;

class _CatgeroyScreanState extends State<CatgeroyScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: CustomAppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFA5E6D0),
                    Color(0xFF85DAE1),
                  ],
                  begin: AlignmentDirectional.topEnd,
                  end: AlignmentDirectional.topStart,
                ),
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: tappedIndex == 0
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 0;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 0
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 0 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/automotive.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: tappedIndex == 1
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 1;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 1
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 1 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/books.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: tappedIndex == 2
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 2;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 2
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 2 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/Deals and saving.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Visibility(
                            visible: tappedIndex == 0,
                            child: AnimatedOpacity(
                              opacity: tappedIndex == 0 ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 300),
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 400),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 350,
                                  height: 200,
                                  // Add any other content you want inside the container.
                                  child: Center(
                                      child: Image.asset(
                                          'assets/car-accessories.jpg')),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Visibility(
                          visible: tappedIndex == 1,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 320,
                              height: 200,
                              // Add any other content you want inside the container.
                              child: Center(
                                  child:
                                      Image.asset('assets/amazon books.jpg')),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Visibility(
                          visible: tappedIndex == 2,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 1000),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 250,
                              height: 200,
                              // Add any other content you want inside the container.
                              child: Center(
                                  child:
                                      Image.asset('assets/amazone deals.jpg')),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: tappedIndex == 3
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 3;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 3
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 3 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/devices and smartphone.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: tappedIndex == 4
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 4;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 4
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 4 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/fashion and beauty.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: tappedIndex == 5
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 5;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 5
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 5 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/gameing.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Visibility(
                            visible: tappedIndex == 3,
                            child: Material(
                              borderRadius: BorderRadius.circular(15),
                              elevation: 5,
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: 300,
                                height: 200,
                                // Add any other content you want inside the container.
                                child: Center(
                                    child: Image.asset(
                                        'assets/Amazon_1647419956617_1647419956892.jpg')),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Visibility(
                          visible: tappedIndex == 4,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 280,
                              height: 200,
                              // Add any other content you want inside the container.
                              child: Center(
                                  child:
                                      Image.asset('assets/amazonfashion.jpg')),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Visibility(
                          visible: tappedIndex == 5,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 1000),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 220,
                              height: 200,
                              // Add any other content you want inside the container.
                              child: Center(
                                  child: Image.asset(
                                      'assets/gameing amazone.jpg')),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: tappedIndex == 6
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 6;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 6
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 6 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/office and profissional.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: tappedIndex == 7
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 7;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 7
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 7 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/sports.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: tappedIndex == 8
                                ? EdgeInsets.only(top: 12.0)
                                : EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tappedIndex = 8;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(15),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tappedIndex == 8
                                          ? Color(0xff287184)
                                          : Colors.grey,
                                      width: tappedIndex == 8 ? 3 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 120,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/grociess and drink.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Visibility(
                            visible: tappedIndex == 6,
                            child: Material(
                              borderRadius: BorderRadius.circular(15),
                              elevation: 5,
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: 230,
                                height: 200,
                                // Add any other content you want inside the container.
                                child: Center(
                                    child: Image.asset(
                                        'assets/office accesries amazone.jpg')),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Visibility(
                          visible: tappedIndex == 7,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 350,
                              height: 200,
                              // Add any other content you want inside the container.
                              child: Center(
                                  child: Image.asset(
                                      'assets/sport out doors amazone.jpeg')),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Visibility(
                          visible: tappedIndex == 8,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 1000),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 305,
                              height: 200,
                              // Add any other content you want inside the container.
                              child: Center(
                                  child:
                                      Image.asset('assets/amazone fresh.jpeg')),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CustomNavBar(),
        ],
      ),
    );
  }
}
