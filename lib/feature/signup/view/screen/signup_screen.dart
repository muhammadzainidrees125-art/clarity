import 'package:clarity/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'join',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight(800)),
                ),
                Text(
                  'Clarity',
                  style: TextStyle(
                    color: Color(0XFF2563EB),
                    fontSize: 32,
                    fontWeight: FontWeight(800),
                  ),
                ),
              ],
            ),
            Text(
              'Start your journey toward cognitive calm.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight(400),
                color: Color(0XFF434655),
              ),
            ),
            SizedBox(height: 10),
            CustomContainer(
              height: 589,
              width: 350,
              child: Column(children: []),
            ),
          ],
        ),
      ),
    );
  }
}
