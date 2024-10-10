import 'package:flutter/material.dart';
import 'package:ualearning_app/widgets/onboard_page_widget.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final PageController _pageController = PageController(initialPage: 0);

  slideOnboardingPage(int index, PageController pageController) {
    if (pageController.hasClients) {
      if (index < 3) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              //* First welcomw page
              AppOnboardingPage(
                index: 0,
                pageController: _pageController,
                onPress: () {
                  slideOnboardingPage(1, _pageController);
                },
                title: 'First See Learning',
                description:
                    'Forget about of paper all knowlege in one learning. Get it right now',
                imagePath: 'assets/images/firstsee_learnin_pic.png',
              ),

              //* Second welcome page
              AppOnboardingPage(
                index: 1,
                pageController: _pageController,
                onPress: () {
                  slideOnboardingPage(2, _pageController);
                },
                title: 'Connect With Everyone',
                description:
                    'Always keep in touch yor tutor and friens. Let`s get connected',
                imagePath: 'assets/images/connect_pic.png',
              ),

              //* Third welcome page
              AppOnboardingPage(
                index: 2,
                pageController: _pageController,
                onPress: () {
                  slideOnboardingPage(3, _pageController);
                },
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
