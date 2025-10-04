import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subscription Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardPage(),
    );
  }
}

// A new, reusable widget for your summary cards.
// It uses a Column for better control over the layout.
class SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const SummaryCard({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2, // Adds a subtle shadow
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns content to the left
          children: [
            // The top row for the icon and value
            Row(
              children: [
                Icon(icon, color: Colors.blue[700]),
                const SizedBox(width: 8), // Adds space between icon and text
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8), // Adds space between the two rows
            // The subtitle text
            Text(
              title,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: SingleChildScrollView(
        // We add some padding around the whole content area for better spacing
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // The main Row now uses our new SummaryCard widget
              Row(
                children: const [
                  // Expanded makes each card take up equal width
                  Expanded(
                    child: SummaryCard(
                      title: 'Monthly Spending',
                      value: '500',
                      icon: Icons.currency_rupee,
                    ),
                  ),
                  SizedBox(width: 8), // Adds a small gap between cards
                  Expanded(
                    child: SummaryCard(
                      title: 'Active Subscriptions',
                      value: '4',
                      icon: Icons.subscriptions,
                    ),
                  ),
                  SizedBox(width: 8), // Adds a small gap between cards
                  Expanded(
                    child: SummaryCard(
                      title: 'Saved This Month',
                      value: '131',
                      icon: Icons.savings,
                    ),
                  ),
                ],
              ),
              // You can add your other sections here, like the subscription list
            ],
          ),
        ),
      ),
    );
  }
}
