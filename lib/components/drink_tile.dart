import 'package:buble_tea_app/models/drink.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrinkTile extends StatefulWidget {
  final Drink drink;
  void Function()? onTap;
  final Widget trailing;

  DrinkTile({
    super.key,
    required this.drink,
    required this.onTap, 
    required this.trailing,
  });

  @override
  State<DrinkTile> createState() => _DrinkTileState();
}

class _DrinkTileState extends State<DrinkTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: (10)),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 218, 191, 181),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
            title: Text(widget.drink.name),
            subtitle: Text(widget.drink.price),
            leading: Image.asset(widget.drink.imagePath),
            trailing: widget.trailing,
            ),
      ),
    );
  }
}
