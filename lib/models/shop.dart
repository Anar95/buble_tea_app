import 'package:buble_tea_app/models/drink.dart';
import 'package:flutter/material.dart';

class BubleTeaShop extends ChangeNotifier {
  //list for drinks for sale
  final List<Drink> _shop = [
    //pearl milk tea
    Drink(
        name: ' Milk Tea', price: '5.00', imagePath: 'lib/images/image_1.png'),
  ];

  //list of drinks in user cart
  final List<Drink> _userCart = [];

  //get drinks for sale
  List<Drink> get shop => _shop;

//get user cart
List<Drink> get cart => _userCart;

  //add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  //remove drink from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
        notifyListeners();

  }

}
