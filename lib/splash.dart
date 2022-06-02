import 'package:flutter/material.dart';
import 'package:quick_file/utils/utils.dart';
import 'widgets/widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [SizedBox(height: 10), Loading()],
      ),
    );
  }
}
