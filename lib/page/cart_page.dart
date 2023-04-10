import 'package:buble_tea_app/components/drink_tile.dart';
import 'package:buble_tea_app/models/drink.dart';
import 'package:buble_tea_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_button.dart';
import 'home_page.dart';

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
                'Sepetim',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              //list of cart items
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    //get individual drink in cart first
                    Drink drink = value.cart[index];

                    //return as a nice tile
                    return DrinkTile(
                      drink: drink,
                      onTap: () => removeFromCart(drink),
                      trailing: Icon(Icons.delete),
                    );
                  },
                ),
              ),
              //pay button
              MyButton2(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
