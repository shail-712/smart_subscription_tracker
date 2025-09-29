import "package:flutter/material.dart";

// Simple data model for a subscription
class Subscription {
  final String name;
  final double amount;
  final DateTime nextBillingDate;
  final String logoUrl;

  Subscription({
    required this.name,
    required this.amount,
    required this.nextBillingDate,
    required this.logoUrl,
  });
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  // Some mock data for you to use
  final List<Subscription> _subscriptions = [
    Subscription(
      name: 'Netflix',
      amount: 15.99,
      nextBillingDate: DateTime(2025, 10, 5),
      logoUrl: '',
    ),
    Subscription(
      name: 'Spotify',
      amount: 9.99,
      nextBillingDate: DateTime(2025, 10, 12),
      logoUrl: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Subscriptions")),
      body: Center(child: Text("Selected tab: $_selectedIndex")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // placeholder for add subscription
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
