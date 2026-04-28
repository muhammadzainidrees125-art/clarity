import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Customelevatedbuttonicon extends StatefulWidget {
  const Customelevatedbuttonicon({super.key});

  @override
  State<Customelevatedbuttonicon> createState() =>
      _CustomelevatedbuttoniconState();
}

class _CustomelevatedbuttoniconState extends State<Customelevatedbuttonicon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          SvgPicture.asset('android/assets/elevatorbutton icon.svg'),
          Text(
            'Sign up with Google',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight(600),
              color: Color(0xff191B23),
            ),
          ),
        ],
      ),
    );
  }
}
