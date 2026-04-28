import 'package:flutter/material.dart';

class CustomSecuritycontainer extends StatefulWidget {
  const CustomSecuritycontainer({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  final IconData icon;
  final String title;
  final Color color;

  @override
  State<CustomSecuritycontainer> createState() =>
      _CustomSecuritycontainerState();
}

class _CustomSecuritycontainerState extends State<CustomSecuritycontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      width: 350,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(children: [Icon(widget.icon), Text(widget.title)]),
    );
  }
}
