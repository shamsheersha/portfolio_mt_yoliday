import 'package:flutter/material.dart';

class PorfolioScreen extends StatelessWidget {
  const PorfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Porfolio')
          ],
        ),
      ),
    );
  }
}