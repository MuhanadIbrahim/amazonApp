import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/result_service.dart';
import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';

import 'custom_horizntail_widget.dart';

class customListCatgeroy extends StatelessWidget {
  const customListCatgeroy({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: FutureBuilder<List<Product>>(
          future: ApiClient().GetProduct(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Product> products = snapshot.data!;
              var catgeroys = products.map((e) => e.category).toSet().toList();
              var selectedProducts = products
                  .where((element) => element.category == catgeroys[2])
                  .toList();
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: selectedProducts.length,
                itemBuilder: (context, index) {
                  return CustomhorzntailWidget(product: selectedProducts[index],);
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
