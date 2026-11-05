import 'package:flutter/material.dart';

import 'order_summary.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Vegetable Pizza'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pizza_1.png', width: 200),

            const Text(
              'Vegetable Pizza is a pizza with mixed '
              'vegetable mix on top of it.',
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderSummaryScreen(
                      itemName: 'Vegetable Pizza',
                      quantity: 2,
                      orderTotal: 25.00,
                    ),
                  ),
                );
              },
              child: const Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
