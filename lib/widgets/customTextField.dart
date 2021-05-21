import 'package:flutter/material.dart';

// Custom Widget
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    @required this.screenSize,
    @required this.controller,
    @required this.hintText,
  }) : super(key: key);

  final Size screenSize;
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * 0.3,
      height: screenSize.height * 0.05,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 12.0, letterSpacing: 1.5),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
