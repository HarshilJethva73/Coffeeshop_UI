import 'package:flutter/material.dart';
import '../../models/Coffee.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;
  final VoidCallback? press;
  const CoffeeCard({super.key, required this.coffee, this.press});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: coffee.id != 0 ? Colors.black26 : Colors.transparent),
        GestureDetector(
          onTap: press,
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(coffee.image, width: 60),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(coffee.name, style: TextStyle(fontSize: 18)),
                    Text("\$${coffee.price}"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
