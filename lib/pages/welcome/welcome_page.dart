import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Text('page one'),
              Text('page two'),
            ],
          ),
          Positioned(
            child: Text('Widget one'),
            bottom: 24,
            left: 24,
          ),
          Positioned(
            child: Text('Widget two'),
            left: 120,
            top: 24,
          ),
        ],
      ),
    );
  }
}
