import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;

  const SearchTextField({super.key, this.onSubmitted, this.onChanged});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        hintText: 'City name',
      ),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,
    ),
  );
}