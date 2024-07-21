import 'package:flutter/material.dart';
import 'package:x_common/utils/logger.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    logger.d('hello');

    return const MaterialApp(
      home: Placeholder(),
    );
  }
}
