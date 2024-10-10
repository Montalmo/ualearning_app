import 'package:flutter/material.dart';
import 'package:ualearning_app/widgets/onboard_page_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              //* First welcomw page
              AppOnboardingPage(
                title: 'First See Learning',
                description:
                    'Forget about of paper all knowlege in one learning',
                imagePath: 'assets/images/firstsee_learnin_pic.png',
              ),

              //* Second welcome page
              AppOnboardingPage(
                title: 'Connect With Everyone',
                description:
                    'Always keep in touch yor tutor and friens. Let`s get connected',
                imagePath: 'assets/images/connect_pic.png',
              ),

              //* Third welcome page
              AppOnboardingPage(
                title: 'Always Facinated Learning',
                description:
                    'Anywere, anytime. The time is st your discreetion. So study wherever you can',
                imagePath: 'assets/images/idea_pic.png',
              ),
            ],
          ),
          const Positioned(
            bottom: 24,
            left: 24,
            child: Text('Widget one'),
          ),
        ],
      ),
    );
  }
}
