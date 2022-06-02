import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageLogo = 'assets/logo.jpg';

    return Hero(
      tag: 'App Logo',
      child: CircleAvatar(
          foregroundColor: Colors.blue,
          backgroundColor: Colors.black,
          radius: 60.0,
          child: ClipOval(
            child: Image.asset(
              imageLogo,
              fit: BoxFit.contain,
              width: 60.0,
              height: 60.0,
            ),
          )),
    );
  }
}
