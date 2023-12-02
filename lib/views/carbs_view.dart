import 'package:flutter/material.dart';
import 'package:flutter_weekend/models/available_food.dart';

class CarbsView extends StatelessWidget {
  const CarbsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<AvailableFood> availableFood = [
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.4oEdCnb3DrIpq4YtURZJJgHaE5?w=274&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Crabs Dish 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.vwDgmXzQ0knO-WgI0I_N_AHaE8?w=299&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Carbs Dish 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.4oEdCnb3DrIpq4YtURZJJgHaE5?w=274&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Crabs Dish 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.vwDgmXzQ0knO-WgI0I_N_AHaE8?w=299&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Carbs Dish 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.4oEdCnb3DrIpq4YtURZJJgHaE5?w=274&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Crabs Dish 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.vwDgmXzQ0knO-WgI0I_N_AHaE8?w=299&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Carbs Dish 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.4oEdCnb3DrIpq4YtURZJJgHaE5?w=274&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Crabs Dish 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.vwDgmXzQ0knO-WgI0I_N_AHaE8?w=299&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Carbs Dish 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.4oEdCnb3DrIpq4YtURZJJgHaE5?w=274&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Crabs Dish 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.vwDgmXzQ0knO-WgI0I_N_AHaE8?w=299&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Carbs Dish 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.4oEdCnb3DrIpq4YtURZJJgHaE5?w=274&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Crabs Dish 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.vwDgmXzQ0knO-WgI0I_N_AHaE8?w=299&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Carbs Dish 2",
        icon: const Icon(Icons.food_bank),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ListView.builder(
        itemCount: availableFood.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              ListTile(
                leading: availableFood[index].image,
                title: Text(availableFood[index].name),
                trailing: availableFood[index].icon,
              ),
              const Divider(
                height: 34,
              ),
            ],
          );
        }),
      ),
    );
  }
}
