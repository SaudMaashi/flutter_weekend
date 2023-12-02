import 'package:flutter/material.dart';
import 'package:flutter_weekend/views/barbcue_view.dart';
import 'package:flutter_weekend/views/carbs_view.dart';
import 'package:flutter_weekend/views/main_dishes_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> foodScreens = [
      const MainDishesView(),
      const CarbsView(),
      const BarbcueView(),
    ];
    var content = foodScreens[_selectedIndex];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Resturant Menu"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bowlFood, color: Colors.black),
            label: "Main Dishes",
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bowlRice, color: Colors.black),
              label: "Carbs"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.helmetSafety, color: Colors.black),
              label: "Barbcue"),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: content,
    );
  }
}
