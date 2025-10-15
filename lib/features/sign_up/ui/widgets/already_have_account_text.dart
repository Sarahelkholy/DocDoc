import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account ? ',
              style: TextStyles.font14DarkBlueMedium,
            ),
            TextSpan(text: 'Sign in', style: TextStyles.font13BlueSemiBold),
          ],
        ),
      ),
    );
  }
}
