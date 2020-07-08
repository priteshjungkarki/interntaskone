import 'package:flutter/material.dart';
import 'uiDesign.dart';

void main() {
  runApp(InternTaskOne());
}

class InternTaskOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'uidesign',
      routes: {
        'uidesign': (context) => UiDesign(),
      },
    );
  }
}
