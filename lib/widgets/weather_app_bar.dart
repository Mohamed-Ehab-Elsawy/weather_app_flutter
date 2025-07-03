import 'package:flutter/material.dart';

class WeatherAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onSearchIconPressed;

  const WeatherAppBar({super.key, required this.onSearchIconPressed});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    title: const Text(
      'Weather App',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.search_rounded, size: 32),
        onPressed: onSearchIconPressed,
      ),
    ],
  );
}