import 'package:flutter/material.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_paid_app_bar.dart';
import 'package:traing_store_app_vscode/custom_widget/custom_radio_button.dart';

import '../../Cart_items.dart';

class SelectedPaymentScrean extends StatefulWidget {
  const SelectedPaymentScrean({Key? key}) : super(key: key);

  @override
  State<SelectedPaymentScrean> createState() => _SelectedPaymentScreanState();
}

class _SelectedPaymentScreanState extends State<SelectedPaymentScrean> {
  CartItem? cartItem;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Initialize cartItem inside a lifecycle method
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe3e5e6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: CustomPaidAppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomRadioButton(),
          
        ],
      ),
    );
  }
}
