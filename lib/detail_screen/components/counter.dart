import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            numOfItems.toString().padRight(2, 'x'),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              if (numOfItems < 9) {
                setState(() {
                  numOfItems++;
                });
              }
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({
    required IconData icon,
    required VoidCallback press,
  }) {
    return SizedBox(
      width: 25.0,
      height: 25.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
        ),
        onPressed: press,
        child: Icon(icon, size: 15.0),
      ),
    );
  }
}
