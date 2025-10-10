import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet? ',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(text: 'Sign up', style: TextStyles.font13BlueSemiBold),
        ],
      ),
    );
  }
}
