import 'package:flutter/material.dart';
import 'package:flutter_weekend/models/available_food.dart';

class BarbcueView extends StatelessWidget {
  const BarbcueView({super.key});

  @override
  Widget build(BuildContext context) {
    List<AvailableFood> availableFood = [
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.BCyVB1eOGISMbcW62WKITQHaFj?w=226&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.9MiRrl5SD36Df5Bgq6XNdAHaE8?w=276&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.BCyVB1eOGISMbcW62WKITQHaFj?w=226&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.9MiRrl5SD36Df5Bgq6XNdAHaE8?w=276&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.BCyVB1eOGISMbcW62WKITQHaFj?w=226&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.9MiRrl5SD36Df5Bgq6XNdAHaE8?w=276&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.BCyVB1eOGISMbcW62WKITQHaFj?w=226&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.9MiRrl5SD36Df5Bgq6XNdAHaE8?w=276&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.BCyVB1eOGISMbcW62WKITQHaFj?w=226&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.9MiRrl5SD36Df5Bgq6XNdAHaE8?w=276&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.BCyVB1eOGISMbcW62WKITQHaFj?w=226&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.9MiRrl5SD36Df5Bgq6XNdAHaE8?w=276&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 2",
        icon: const Icon(Icons.food_bank),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.BCyVB1eOGISMbcW62WKITQHaFj?w=226&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 1",
        icon: const Icon(Icons.medication_liquid),
      ),
      AvailableFood(
        image: Image.network(
          "https://th.bing.com/th/id/OIP.9MiRrl5SD36Df5Bgq6XNdAHaE8?w=276&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
        ),
        name: "Barbcue 2",
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
