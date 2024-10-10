import 'package:flutter/material.dart';

import 'package:ualearning_app/constants/gap.dart';
import 'package:ualearning_app/theme/color_pallet.dart';
import 'package:ualearning_app/utitlits/extentions.dart';

class AppOnboardingPage extends StatelessWidget {
  const AppOnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.fitHeight,
          ),
          AppGaps.gapH16,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: context.textTheme.titleLarge,
            ),
          ),
          AppGaps.gapH8,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium!
                  .copyWith(color: AppColorPallet.textSecondaryColor),
            ),
          ),
          AppGaps.gapH24,
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Next',
            ),
          ),
        ],
      ),
    );
  }
}
