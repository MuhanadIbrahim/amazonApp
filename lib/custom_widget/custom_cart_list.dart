import 'package:flutter/material.dart';

import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';


class CustomResultList extends StatelessWidget {
  CustomResultList({Key? key,  required this.product}) : super(key: key);
  Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Colors.grey.shade100,
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  height: double.infinity,
                  child: Image.network(
                    product.thumbnail,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxHeight: 150, maxWidth: 200),
                      child: Text(
                        product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                   
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'EGP',
                          ),
                          Text(
                            '${product.price}',
                            style: const TextStyle(fontSize: 35),
                          ),
                          const Text(
                            '00',
                          )
                        ],
                      ),
                    ),
                     
                    
                   
                  ],
                )
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}
