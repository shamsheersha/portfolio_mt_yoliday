import 'package:flutter/material.dart';
import 'package:yoliday_mt/screens/portfolio_screen.dart';
import 'package:yoliday_mt/widgets/custom_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  int _currentIndex = 1;

  final List _screens = [
    const EmptyScreen(title: 'Home'),
    const PortfolioScreen(),
    const EmptyScreen(title: 'Input'),
    const EmptyScreen(title: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class EmptyScreen extends StatelessWidget {
  final String title;

  const EmptyScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '$title Screen',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}