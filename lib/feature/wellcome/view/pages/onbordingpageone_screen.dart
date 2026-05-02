import 'package:flutter/material.dart';

class OnboardingPageOne extends StatelessWidget {
  const OnboardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.asset('assets/Mouse.png'),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          child: Text(
            textAlign: TextAlign.center,
            'Welcome to Task Tracker',
            style: TextTheme.of(context).headlineLarge,
          ),
        ),
        SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          'Organize your tasks and boost productivity with effortless clarity.',
        ),
      ],
    );
  }
}
