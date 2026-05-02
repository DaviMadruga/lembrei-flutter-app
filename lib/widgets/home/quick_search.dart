import 'package:flutter/material.dart';

class QuickSearch extends StatelessWidget {
  const QuickSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        labelText: "Buscar lembrete...",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}