import 'package:flutter/material.dart';

class Coffee {
  final String image, name, description, category;
  final int id;
  final double price;
  final Color bgcolor;

  const Coffee({
    required this.image,
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.id,
    required this.bgcolor,
  });
}

List<Coffee> coffeeList = [
// HOT COFFEE
Coffee(
  id: 1,
  name: 'Cappuccino',
  description: "A rich and foamy espresso-based drink with steamed milk and dense milk foam.",
  category: 'Hot Coffee',
  price: 4.20,
  image: 'assets/images/cappuccino.jpg',
  bgcolor: Color(0xFFB6815F),
),

Coffee(
  id: 2,
  name: 'Americano',
  description: "A smooth and bold coffee made by diluting espresso with hot water.",
  category: 'Hot Coffee',
  price: 3.50,
  image: 'assets/images/americano.jpg',
  bgcolor: Color(0xFF3D82AE),
),

Coffee(
  id: 3,
  name: 'Mocha',
  description: "A chocolate-flavored variant of a latte with espresso, steamed milk and cocoa.",
  category: 'Hot Coffee',
  price: 4.99,
  image: 'assets/images/mocha.jpg',
  bgcolor: Color(0xFF8E6CEF),
),

// COLD COFFEE
Coffee(
  id: 4,
  name: 'Iced Latte',
  description: "Chilled espresso blended with cold milk and ice. Light, smooth and refreshing.",
  category: 'Cold Coffee',
  price: 4.59,
  image: 'assets/images/iced_lette.jpg',
  bgcolor: Color(0xFF87C9E8),
),

Coffee(
  id: 5,
  name: 'Iced Mocha',
  description:
      "Iced coffee drink made with espresso, chocolate syrup, milk and ice.",
  category: 'Cold Coffee',
  price: 5.20,
  image: 'assets/images/iced_mocha.jpg',
  bgcolor: Color(0xFFD9A1A1),
),

// HOT TEA
Coffee(
  id: 6,
  name: 'Black Tea',
  description: "Strong, bold and rich tea brewed from oxidized tea leaves.",
  category: 'Hot Tea',
  price: 2.99,
  image: 'assets/images/black_tea.jpg',
  bgcolor: Color(0xFF3D6356),
),

Coffee(
  id: 7,
  name: 'Green Tea',
  description: "Light and smooth tea brewed from steamed, unoxidized leaves. Fresh and healthy.",
  category: 'Hot Tea',
  price: 2.79,
  image: 'assets/images/green_tea.jpg',
  bgcolor: Color(0xFF8BC34A),
),

// ICED TEA (you wrote "iced coffee" but your items are teas)
Coffee(
  id: 8,
  name: 'Iced Black Tea',
  description: "Chilled black tea served over ice.",
  category: 'Iced Tea',
  price: 2.99,
  image: 'assets/images/black_tea.jpg',
  bgcolor: Color(0xFF3D6356),
),

Coffee(
  id: 9,
  name: 'Iced Green Tea',
  description: "Refreshing iced green tea.",
  category: 'Iced Tea',
  price: 2.79,
  image: 'assets/images/green_tea.jpg',
  bgcolor: Color(0xFF8BC34A),
),

// HOT DRINKS
Coffee(
  id: 10,
  name: 'Hot Toddy',
  description:
      "A warm and soothing drink made with hot water, honey, lemon, and spices. Perfect for cold days.",
  category: 'Hot Drink',
  price: 4.99,
  image: 'assets/images/hot_toddy.jpg',
  bgcolor: Color(0xFFE8B77A),
),

Coffee(
  id: 11,
  name: 'Hot Chocolate',
  description: "A warm, creamy chocolate drink made with milk and cocoa.",
  category: 'Hot Drink',
  price: 3.99,
  image: 'assets/images/hot_chocolate.jpg',
  bgcolor: Color(0xFFE6A57E),
),

// SPECIAL DRINKS

];
