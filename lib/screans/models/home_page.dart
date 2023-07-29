import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_nav_bar.dart';
import 'package:traing_store_app_vscode/result_service.dart';
import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';
import '../../custom_widget/custom_app_bar.dart';
import '../../custom_widget/custom_banck_misr.dart';
import '../../custom_widget/custom_catgeroy_row.dart';
import '../../custom_widget/custom_discount.dart';
import '../../custom_widget/custom_game_pad.dart';
import '../../custom_widget/custom_info_location_bar.dart';
import '../../custom_widget/custom_list_catgeroy.dart';
import '../../custom_widget/custom_slideshow.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: CustomAppBar(),
      ),
      backgroundColor: const Color(0xffe3e5e6),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const InfoLocationBar(),
                const CustomCatgeroyRow(),
                const Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Custom_slideshow(),
                    Positioned(
                      top: 200,
                      left: 0,
                      right: 0,
                      child: customListCatgeroy(),
                    ),
                  ],
                ),
                const banckMisrRow(),
                const gamepadRow(),
                const Padding(
                  padding: EdgeInsets.only(left: 12, top: 30),
                  child: Text(
                    'Todays Deals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                SizedBox(
                    height: 290,
                    child: FutureBuilder<List<Product>>(
                      future: ApiClient().GetProduct(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<Product> products = snapshot.data!;
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              return CustomDiscountWidget(
                                product: products[index],
                              );
                            },
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ))
              ],
            ),
          ),
          const CustomNavBar()
        ],
      ),
    );
  }
}
