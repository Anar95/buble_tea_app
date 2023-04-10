import 'package:buble_tea_app/models/drink.dart';
import 'package:flutter/material.dart';

class BubleTeaShop extends ChangeNotifier {
  //list for drinks for sale
  final List<Drink> _shop = [
    //pearl milk tea
        Drink(
        name: ' Milk Bubble Tea', price: '5.00', imagePath: 'lib/images/image_1.png'),
        Drink( 
        name: ' Lemon Bubble Tea', price: '4.00', imagePath: 'lib/images/image_2.png'),
        Drink( 
        name: ' Caramel Chai Bubble Tea', price: '7.00', imagePath: 'lib/images/image_3.png'),
        Drink(
        name: ' Tealive Bubble Milk Tea', price: '5,5.00', imagePath: 'lib/images/image_4.png'),
        Drink( 
        name: ' Tai Chi Pearl Milk Te', price: '8.00', imagePath: 'lib/images/image_5.png'),
        Drink( 
        name: ' Gong Cha Bubble Milk Tea', price: '5,99.00', imagePath: 'lib/images/image_6.png'),
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
