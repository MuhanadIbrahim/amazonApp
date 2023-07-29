import 'package:flutter/material.dart';
import '../Cart_items.dart';
import '../const.dart';
import 'custom_paid_app_bar.dart';

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
    cartItem = ModalRoute.of(context)?.settings.arguments as CartItem;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe3e5e6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62),
        child:  CustomPaidAppBar(),
      ),
      body: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRadioButton(),
          ],
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({Key? key}) : super(key: key);

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  String? selectedOption;
  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void selectOption(String? option) {
    setState(() {
      selectedOption = option;
    });
  }

  Widget buildOption(
    String optionValue,
    String optionTitle,
    String optionDescription,
  ) {
    final bool isSelected = selectedOption == optionValue;

    return GestureDetector(
      onTap: () => selectOption(optionValue),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: isSelected || isExpanded ? 120 : 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? Colors.yellow[200] : Colors.white,
        ),
        child: Row(
          children: [
            Radio(
              value: optionValue,
              groupValue: selectedOption,
              onChanged: (value) => selectOption(value as String?),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    optionTitle,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  if (isSelected || isExpanded)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        optionDescription,
                        style: const TextStyle(fontSize: 17),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(right: 75.0),
          child: Text(
            'Select a payment method',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, paymentRoute);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: selectedOption == null
                  ? Colors.yellow[200]
                  : Colors.yellow[600],
            ),
            height: 45,
            width: 370,
            child: const Center(
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: toggleExpansion,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: isExpanded ? 200 : 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
                style: BorderStyle.solid,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOption(
                  'one',
                  'Buy Now, Pay Later with valU',
                  'valU Installment payments up to 60 months at 3.33% monthly interest rate. Please select this payment method only if you are a valU registered customer.',
                ),
                if (isExpanded)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'valU Installment payments up to 60 months at 3.33% monthly interest rate. Please select this payment method only if you are a valU registered customer.',
                      style: TextStyle(fontSize: 12.3),
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        buildOption(
          'two',
          'Cash on Delivery (COD)',
          'Pay by cash on delivery. COD fees of EGP 12 may apply.',
        ),
        const SizedBox(height: 10),
        buildOption(
          'three',
          'Amazon accept all major credits and debit cards:',
          'We accept all card Master card,visa,Mizza ',
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, paymentRoute);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: selectedOption == null
                  ? Colors.yellow[200]
                  : Colors.yellow[600],
            ),
            height: 45,
            width: 370,
            child: const Center(
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
       
      ],
    );
  }
}
