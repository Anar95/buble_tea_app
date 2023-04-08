import 'package:buble_tea_app/components/drink_tile.dart';
import 'package:buble_tea_app/models/drink.dart';
import 'package:buble_tea_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove drink from cart
  void removeFromCart(Drink drink) {
    Provider.of<BubleTeaShop>(context, listen: false).removeFromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubleTeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //headline
              const Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),

              //list of cart items
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  //get individual drink in cart first
                  Drink drink = value.cart[index];
                  //return as a nice tile
                }),
              ),
              //pay button
            ],
          ),
        ),
      ),
    );
  }
}
