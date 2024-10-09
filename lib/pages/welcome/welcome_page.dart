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
              Column(
                children: [
                  Image.asset(
                    'assets/images/firstsee_learnin_pic.png',
                    fit: BoxFit.fitHeight,
                  ),
                  Text(
                    'First See Learning',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
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
