import 'package:flutter/material.dart';

import '../../const.dart';
import '../../custom_widget/custom_app_bar.dart';
import '../../custom_widget/custom_info_location_bar.dart';
import '../../custom_widget/custom_nav_bar.dart';
import '../../custom_widget/custom_resuly_list.dart';
import '../../result_service.dart';
import 'Product_Model.dart';

class FragrancesScrean extends StatelessWidget {
 
  final String route = '/mobile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          const InfoLocationBar(),
          Expanded(
            child: FutureBuilder<List<Product>>(
              future: ApiClient().GetProduct(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Product> products = snapshot.data!;
                   var catgeroys = products.map((e) => e.category).toSet().toList();
                    var selectedProducts =
        products.where((element) => element.category == catgeroys[2]).toList();
                  return ListView.builder(
                    itemCount: selectedProducts.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, detailsScranRoute);
                        },
                        child: CustomResultList(product: selectedProducts[index]),
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          const CustomNavBar()
        ],
      ),
    );
  }
}
