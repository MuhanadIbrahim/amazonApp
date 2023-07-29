import 'package:flutter/material.dart';
import '../../const.dart';
import '../../custom_widget/custom_app_bar.dart';
import '../../custom_widget/custom_nav_bar.dart';
import 'Product_Model.dart';

class TrackOrderScrean extends StatefulWidget {
  const TrackOrderScrean({Key? key}) : super(key: key);

  @override
  State<TrackOrderScrean> createState() => _TrackOrderScreanState();
}

class _TrackOrderScreanState extends State<TrackOrderScrean> {
  bool checkbox1 = true;
  bool checkbox2 = true;
  bool checkbox3 = true;
  bool checkbox4 = true;
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
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' Out of delivery ',
                            style: TextStyle(
                                color: Color(0xff287184),
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text(
                              ' Now estmaited 2:45 PM - 5:45 PM',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(
                              Icons.error_outline,
                              color: Color(0xff287184),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: cartItems.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              Product product =
                                  cartItems.elementAt(index).product;
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: SizedBox(
                                  width: 100,
                                  child: Image.network(
                                    product.thumbnail,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Please give drivers at least 6 feet of space to\nsafely complete your delivery.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                      height: 350,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: checkbox1,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox1 = value!;
                                      });
                                    },
                                    activeColor: Color(0xff287184),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 81.0),
                                    child: Text('Order Thursday, April 8'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 220.0),
                                child: Container(
                                  height: 50,
                                  width: 5,
                                  color: Color(0xff287184),
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox2,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox2 = value!;
                                      });
                                    },
                                    activeColor: Color(0xff287184),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60.0),
                                    child: Text('Shipped Thursday, April 8'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 220.0),
                                child: Container(
                                  height: 50,
                                  width: 5,
                                  color: Color(0xff287184),
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox3,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox3 = value!;
                                      });
                                    },
                                    activeColor: Color(0xff287184),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 125.0),
                                    child: Text('Out for delivery'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 220.0),
                                child: Container(
                                  height: 50,
                                  width: 5,
                                  color: Color(0xff287184),
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: checkbox4,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox4 = value!;
                                      });
                                    },
                                    activeColor: Color(0xff287184),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 129.0),
                                    child: Text(
                                      'Arriving today',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                        ],
                      )),
                ],
              ),
            ),
          ),
          const CustomNavBar(),
        ],
      ),
    );
  }
}
