import 'package:flutter/material.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/core/presentation/widgets/styled_card.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0xff61045f),
              Color(0xffAA076B),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              'Hello Mateusz',
              style: AppTextStyle.robotoRegular(
                color: AppColors.textWhite,
                size: 40,
              ),
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: 'Welcome back to Habitatu',
                  style: TextStyle(
                    color: AppColors.textWhite.withOpacity(0.7),
                  ),
                ),
                const TextSpan(text: ' 😊'),
              ]),
              style: AppTextStyle.robotoRegular(
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
