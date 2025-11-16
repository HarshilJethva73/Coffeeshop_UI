import 'package:flutter/material.dart';
import '../../models/Coffee.dart';

class Main extends StatelessWidget {
  const Main({super.key, required this.coffee});
  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hot', style: TextStyle(color: Colors.white, fontSize: 16.0)),
          Text(
            coffee.name,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Price\n'),
                    TextSpan(
                      text: '\$${coffee.price}',
                      style: Theme.of(context).textTheme.displayMedium!
                          .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Hero(
                    tag: '${coffee.id}',
                    child: Image.asset(coffee.image, fit: BoxFit.fill),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
