import 'package:flutter/material.dart';

class OrderSummaryScreen extends StatelessWidget {
  final String itemName;
  final int quantity;
  final double orderTotal;

  const OrderSummaryScreen({
    super.key,
    required this.itemName,
    required this.quantity,
    required this.orderTotal,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Item: $itemName'),
            Text('Quantity: $quantity'),
            Text('Total: RM ${orderTotal.toStringAsFixed(2)}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
