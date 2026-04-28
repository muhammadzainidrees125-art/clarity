import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    super.key,
    required this.child,
    required this.height,
    required this.width,
  });

  final Widget child;
  final double height;
  final double width;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget.child,
    );
  }
}
