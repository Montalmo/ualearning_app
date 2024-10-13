import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:ualearning_app/pages/welcome/presentation/welcome_page_controller.dart';
import 'package:ualearning_app/widgets/onboard_page_widget.dart';

class WelcomePage extends ConsumerWidget {
  WelcomePage({super.key});

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(welcomePageIndexProvider);

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

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (value) {
              ref.read(welcomePageIndexProvider.notifier).state = value;
            },
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
                  context.push('/auth');
                },
                title: 'Always Facinated Learning',
                description:
                    'Anywere, anytime. The time is st your discreetion. So study wherever you can',
                imagePath: 'assets/images/idea_pic.png',
              ),
            ],
          ),
          Positioned(
            bottom: 32,
            child: DotsIndicator(
              dotsCount: 3,
              position: index,
              mainAxisAlignment: MainAxisAlignment.center,
              decorator: DotsDecorator(
                size: const Size.square(8),
                activeSize: const Size(24, 8),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
