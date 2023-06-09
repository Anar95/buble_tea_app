import 'package:buble_tea_app/models/drink.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<StatefulWidget> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  //customize Sweetness
  double sweetValue = 0.5;
  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  double iceValue = 0.5;
  void customizeIce(double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  double pearlValue = 0.5;
  void customizePearl(double newValue) {
    setState(() {
      pearlValue = newValue;
    });
  }

  //add to cart

  void addToCart() {
    Provider.of<BubleTeaShop>(context, listen: false).addToCart(widget.drink);

    //direct user back to shop page
    Navigator.pop(context);

    //let user know it has been successfully added
    showDialog(
      context: context, 
      builder:(context) =>const AlertDialog(
       title: Text('Ürününüz Sepete Eklendi'),
      ) ,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name)),
      backgroundColor: Colors.brown[200],
      body: Column(
        children: [
          // drink image
          Container(
            width: 350,
            height: 500,
          child: Image.asset(widget.drink.imagePath),

          ),

          //sliders to customize drink
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //sweetness slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 120, child: Text('Sweet')),
                    Expanded(
                      child: Slider(
                        value: sweetValue,
                        label: sweetValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeSweet(value),
                      ),
                    ),
                  ],
                ),
                //ice slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 120, child: Text('Ice')),
                    Expanded(
                      child: Slider(
                        value: iceValue,
                        label: iceValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeIce(value),
                      ),
                    ),
                  ],
                ),

                //pearls slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 120, child: Text('Pearls')),
                    Expanded(
                      child: Slider(
                        value: pearlValue,
                        label: pearlValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizePearl(value),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          //add to cart button
          MaterialButton(
            color: Colors.brown,
            onPressed: addToCart,
            child: const Text(
              'Add to Cart',
              style: TextStyle(color: Colors.white),
              
            ),
            
          )
        ],
      ),
    );
  }
}
