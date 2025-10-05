import 'package:flutter/material.dart';

// Import all the pieces you need
import '../../../data/models/subscription_model.dart';
import '../../../shared_widgets/summary_card.dart';
import '../../../shared_widgets/subscription_list_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // I've moved the mock data here for now. Later, this will come from a state management solution.
    final List<Subscription> subscriptions = [
      Subscription(
        title: 'Netflix',
        category: 'Entertainment',
        amount: 499.0,
        billingCycle: '/mo',
        nextDueDate: DateTime(2025, 7, 15),
        logoBackgroundColor: Colors.red,
        logoUrl: '',
        tag: 'Shared',
      ),
      Subscription(
        title: 'Spotify',
        category: 'Music',
        amount: 129.0,
        billingCycle: '/mo',
        nextDueDate: DateTime(2025, 7, 20),
        logoBackgroundColor: Colors.green,
        logoUrl: '',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: SummaryCard(
                      title: 'Monthly Spending',
                      value: '500',
                      icon: Icons.currency_rupee,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: SummaryCard(
                      title: 'Active Subscriptions',
                      value: '4',
                      icon: Icons.subscriptions,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: SummaryCard(
                      title: 'Saved This Month',
                      value: '131',
                      icon: Icons.savings,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16), // Add some space
              // You can add your other sections here, like the subscription list
              SubscriptionCards(subscriptions: subscriptions),
            ],
          ),
        ),
      ),
    );
  }
}
