import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  Box({
    @required this.textName,
  });
  final String textName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            textName,
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xFFD1C8D8),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
