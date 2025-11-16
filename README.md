# Coffeeshop_UI

A lightweight Flutter UI prototype for a coffee shop app. This project demonstrates a clean product list and detail screens with categories (Hot Coffee, Cold Coffee, Hot Tea, Hot Drink, Iced Tea, Special Drink), item cards, and a detail view with quantity counter. It's intended as a UI-focused starter for learning Flutter layouts, state handling, and asset usage.

## Features
- Categorized coffee/tea/drink items
- Product list with image, name and price
- Detail screen with hero image, description, price and quantity counter
- Simple, reusable widgets (cards, counter, detail components)
- Uses local assets (images) and custom colors for item cards

## Screenshots
Add app screenshots to `assets/screenshots` and reference them here.

## Technologies
- Flutter (Dart)
- Works on Android / iOS

## Project structure (key files)
- lib/models/Coffee.dart — data model and sample list
- lib/home_screen — category tabs and product list UI
- lib/home_screen/components/coffee_card.dart — product list item
- lib/detail_screen — product detail UI and components
- lib/detail_screen/components/counter.dart — quantity selector

## Getting started (Windows / VS Code)
Open the integrated terminal in the project root:

1. Change to project directory:
   cd D:\Harshil\androidapps\flutter1\coffeeshop_ui

2. Get packages:
   flutter pub get

3. Run on a connected device or emulator:
   flutter run

## Contributing
1. Fork the repository  
2. Create a feature branch  
3. Commit and open a pull request

## License
MIT