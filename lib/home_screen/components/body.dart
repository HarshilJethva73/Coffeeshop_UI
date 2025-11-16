import 'package:flutter/material.dart';
import './coffee_card.dart';
import '../../models/Coffee.dart';
import '../../detail_screen/detail_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;

  List<String> categories = [
    'Hot Coffee',
    'Cold Coffee',
    'Hot Tea',
    'Iced Tea',
    'Hot Drink',
    'Special Drink',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 232, 220, 215),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('It\'s Great Day for Coffee', style: TextStyle(fontSize: 25)),
            Categories(
              selectedIndex: selectedIndex,
              onCategorySelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: coffeeList
                    .where(
                      (coffee) => coffee.category == categories[selectedIndex],
                    )
                    .length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final filteredList = coffeeList
                      .where(
                        (coffee) =>
                            coffee.category == categories[selectedIndex],
                      )
                      .toList();
                  return CoffeeCard(
                    coffee: filteredList[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(coffee: filteredList[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onCategorySelected;

  const Categories({
    super.key,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Hot Coffee',
    'Cold Coffee',
    'Hot Tea',
    'Iced Tea',
    'Hot Drink',
    'Special Drink',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        widget.onCategorySelected(index);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: widget.selectedIndex == index
                    ? Colors.white
                    : Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: widget.selectedIndex == index
                      ? Colors.black
                      : const Color(0xFF2251FF),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
