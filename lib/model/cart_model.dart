import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]
    ['Avocado', '4.50', 'lib/images/avocado.png', Colors.green],
    ['Banana', '3.50', 'lib/images/banana.png', Colors.yellow],
    ['Orange', '2.90', 'lib/images/orange.png', Colors.orange],
    ['Tomato', '6.70', 'lib/images/tomato.png', Colors.red],
  ];

  // cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (var i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
