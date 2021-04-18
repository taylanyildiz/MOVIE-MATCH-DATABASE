import 'package:flutter/material.dart';
import 'package:movie_match_home/models/models.dart';

class CircleUser extends StatelessWidget {
  final User user;

  const CircleUser({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22.0,
      backgroundColor: Colors.red,
      child: CircleAvatar(
        radius: 20.0,
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage(user.user_photo_1),
      ),
    );
  }
}
