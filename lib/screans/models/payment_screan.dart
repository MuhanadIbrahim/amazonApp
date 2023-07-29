import 'package:flutter/material.dart';
import '../../const.dart';
import '../../custom_widget/Custom_receipt.dart';
import '../../custom_widget/custom_list_builder_payment_product.dart';
import '../../custom_widget/custom_paid_app_bar.dart';
import '../../custom_widget/custom_shipping_adrdess.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sum = 0;
    var sumPrice = 0;
    var ordertotal = 0;
    for (var element in cartItems) {
      sum += element.count;
    }
    for (var element in cartItems) {
      sumPrice += element.product.price * element.count;
    }
    ordertotal += sumPrice + 38;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: CustomPaidAppBar(),
      ),
      backgroundColor: const Color(0xffe3e5e6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'By placing your order, you agree to Amazon\'s privacy notice and conditions of use.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, trackorderRoute),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.yellow[600],
                ),
                height: 50,
                width: 375,
                child: const Center(
                  child: Text(
                    'Place your order',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomReceipt(sumPrice, ordertotal),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 257.0),
              child: Text(
                'Shipping address',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomShippingAddress(),
            const SizedBox(height: 15),
            customListBuilder(),
          ],
        ),
      ),
    );
  }
}
