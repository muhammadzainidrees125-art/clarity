import 'package:clarity/feature/core/custom_textfromfield.dart';
import 'package:clarity/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF8FF).withValues(alpha: 0.5),
      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.all(12),
        child: Column(
          children: [
            SizedBox(height: 60),
            Container(
              height: 150,
              width: 350,
              padding: EdgeInsets.all(12),

              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/clarity 1.png'),
                      ),
                    ),
                  ),
                  Text(
                    'Clarity',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight(800),
                      color: Color(0xff004AC6),
                    ),
                  ),
                  Text(
                    'Manage complex schedules with cognitive ease.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight(400),
                      color: Color(0xff434655),
                    ),
                  ),
                ],
              ),
            ),
            CustomContainer(
              height: 450,
              width: 350,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight(700)),
                  ),
                  Text(
                    'Sign in to your account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight(400),
                      color: Color(0xff434655),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'EMAIL ADDRESS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight(600),
                      color: Color(0xff434655),
                    ),
                  ),
                  SizedBox(height: 2),
                  CustomTextfromfield(
                    icon: Icon(Icons.email),
                    title: 'Enter your email address',
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'PASSWORD',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight(600),
                          color: Color(0xff434655),
                        ),
                      ),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight(600),
                          color: Color(0xff004AC6),
                        ),
                      ),
                    ],
                  ),
                  CustomTextfromfield(title: 'Enter your password'),
                  Icon(Icons.lock),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
