import 'package:flutter/material.dart';

class Onboardingthree extends StatefulWidget {
  const Onboardingthree({super.key});

  @override
  State<Onboardingthree> createState() => _OnboardingthreeState();
}

class _OnboardingthreeState extends State<Onboardingthree> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.asset('assets/bc.png'),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          child: Text(
            textAlign: TextAlign.center,
            'Take Control of Your Day',
            style: TextTheme.of(context).headlineLarge,
          ),
        ),
        SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          'Streamline your mental load with task prioritization .',
        ),
      ],
    );
  }
}
