import 'package:flutter/material.dart';

import 'package:ualearning_app/utitlits/extentions.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/firstsee_learnin_pic.png',
                    fit: BoxFit.fitHeight,
                  ),
                  Text(
                    'First See Learning',
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleLarge,
                  ),
                ],
              ),
              Image.asset('assets/images/idea_pic.png'),
            ],
          ),
          Positioned(
            child: Text('Widget one'),
            bottom: 24,
            left: 24,
          ),
        ],
      ),
    );
  }
}
