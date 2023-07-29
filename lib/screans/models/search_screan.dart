import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_resuly_list.dart';
import '../../result_service.dart';
import 'Product_Model.dart';

class SerachPage extends StatefulWidget {
  const SerachPage({Key? key}) : super(key: key);

  @override
  State<SerachPage> createState() => _SerachPageState();
}

class _SerachPageState extends State<SerachPage> {
  late Future<List<Product>> _productFuture;
  String searchText = '';

  @override
  void initState() {
    super.initState();
    _productFuture = ApiClient().GetProduct();
  }

  void updateList(String value) {
    setState(() {
      searchText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(62),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          flexibleSpace: Container(
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
          ),
          title: Material(
            elevation: 10,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            shadowColor: Colors.grey,
            child: TextField(
              onChanged: updateList,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 1),
                hintText: 'Search Amazon.eg',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              style: const TextStyle(fontSize: 19),
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<Product>>(
        future: _productFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            List<Product> products = snapshot.data!;
            List<Product> displayList = products
                .where((e) =>
                    e.title.toLowerCase().startsWith(searchText.toLowerCase()))
                .toList();

            return ListView.builder(
              itemCount: displayList.length,
              itemBuilder: (context, index) =>
                  CustomResultList(product: displayList[index]),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
