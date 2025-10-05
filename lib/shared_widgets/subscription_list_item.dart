import 'package:flutter/material.dart';
import '../data/models/subscription_model.dart'; // <-- IMPORTANT IMPORT

class SubscriptionCards extends StatelessWidget {
  final List<Subscription> subscriptions;

  const SubscriptionCards({super.key, required this.subscriptions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: subscriptions.length,
      itemBuilder: (context, index) {
        final sub = subscriptions[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: sub.logoBackgroundColor,
              backgroundImage: NetworkImage(sub.logoUrl),
            ),
            title: Text(sub.title),
            subtitle: Text('${sub.category} • ${sub.billingCycle}'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '₹${sub.amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Due: ${sub.nextDueDate.day}/${sub.nextDueDate.month}/${sub.nextDueDate.year}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
