import 'package:buble_tea_app/models/drink.dart';
import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  final Widget trailing;
  void Function()? onTap;

  DrinkTile({
    super.key,
    required this.drink,
    required this.onTap, 
    required Icon trailing,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 218, 191, 181),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
            title: Text(drink.name),
            subtitle: Text(drink.price),
            leading: Image.asset(drink.imagePath),
            trailing: trailing,
            ),
      ),
    );
  }
}
