import 'package:flutter/material.dart';

import 'package:ualearning_app/theme/color_pallet.dart';

enum AppElevatedButtonType { primary, secondary }

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {super.key,
      required this.buttonType,
      required this.lable,
      required this.onPress});

  final AppElevatedButtonType buttonType;
  final String lable;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonType == AppElevatedButtonType.primary
            ? AppColorPallet.mainColor
            : Colors.red,
        foregroundColor: buttonType == AppElevatedButtonType.primary
            ? AppColorPallet.whiteColor
            : Colors.black54,
        side: const BorderSide(color: AppColorPallet.buttonBorderColor),
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
      ),
      onPressed: onPress,
      child: Text(lable),
    );
  }
}
