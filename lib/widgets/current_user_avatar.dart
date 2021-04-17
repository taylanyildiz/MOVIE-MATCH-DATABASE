import 'package:flutter/material.dart';
import 'package:movie_match_home/models/models.dart';

class CurrentUserAvatar extends StatelessWidget {
  final User currentUser;
  final Function onPressed;

  const CurrentUserAvatar({
    Key key,
    this.currentUser,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 20.0,
      ),
    );
  }
}
