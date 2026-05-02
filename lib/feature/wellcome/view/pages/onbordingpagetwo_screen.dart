import 'package:flutter/material.dart';

class Onboardingpagetwo extends StatefulWidget {
  const Onboardingpagetwo({super.key});

  @override
  State<Onboardingpagetwo> createState() => _OnboardingpagetwoState();
}

class _OnboardingpagetwoState extends State<Onboardingpagetwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.asset('assets/Mockup of Task Board UI.png'),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          child: Text(
            textAlign: TextAlign.center,
            'Stay Organized',
            style: TextTheme.of(context).headlineLarge,
          ),
        ),
        SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          'Clutter-free tools designed to help you maintain mental focus.',
        ),
      ],
    );
  }
}
