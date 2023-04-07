import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
         Expanded(child: ListView.builder(itemBuilder: (context, index) =>,),)
          
         //pay button
          
          
         ],
        ),
      ),
    );
  }
}
