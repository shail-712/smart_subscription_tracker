import 'package:flutter/material.dart';
import 'features/dashboard/screens/dashboard_screen.dart'; // <-- The only import you need!

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Subscription Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardPage(), // <-- Start with your screen
    );
  }
}
