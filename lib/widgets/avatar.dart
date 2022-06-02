import 'package:flutter/material.dart';
import 'logo_header.dart';

class Avatar extends StatelessWidget {
  const Avatar(this.photoUrl, {Key? key}) : super(key: key);
  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    if ((photoUrl == '') || (photoUrl.isEmpty)) {
      return const LogoHeader();
    }
    return Hero(
      tag: 'User Avatar Image',
      child: CircleAvatar(
          foregroundColor: Colors.blue,
          backgroundColor: Colors.white,
          radius: 70.0,
          child: ClipOval(
            child: Image.network(
              photoUrl,
              fit: BoxFit.cover,
              width: 120.0,
              height: 120.0,
            ),
          )),
    );
  }
}
