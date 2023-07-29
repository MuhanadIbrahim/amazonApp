// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:traing_store_app_vscode/screans/models/Product_Model.dart';

class CartItem {
  Product product;
  int count;
  CartItem({
    required this.product,
    required this.count,
  });
}

class PaymentScreenArguments {
  final List<CartItem> cartItems;
  final double sumPrice;

  PaymentScreenArguments(this.cartItems, this.sumPrice);
  /*GestureDetector(
  onTap: () {
    var arguments = PaymentScreenArguments(cartItems, sumPrice);
    Navigator.pushNamed(context, selectedPaymentRoute, arguments: arguments);
  },
  // Rest of your GestureDetector code...
)
بعدين احط cartitems.product جوا اوبجكت برودكت و اديب منها الصور و الباقى 
*/
}
