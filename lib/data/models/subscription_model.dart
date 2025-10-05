import 'package:flutter/material.dart';

class Subscription {
  final String title;
  final String category; // e.g., "Entertainment", "Music"
  final double amount; // Use double for currency
  final String billingCycle; // "/mo" or "/yr"
  final DateTime nextDueDate; // Use DateTime for calculations!
  final Color logoBackgroundColor; // The color of the circle
  final String logoUrl; // A URL to an image, or a placeholder
  final String? tag; // Optional tag like "Shared"

  Subscription({
    required this.title,
    required this.category,
    required this.amount,
    required this.billingCycle,
    required this.nextDueDate,
    required this.logoBackgroundColor,
    required this.logoUrl,
    this.tag, // This one is optional
  });
}
