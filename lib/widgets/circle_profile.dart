import 'package:flutter/material.dart';
import 'package:movie_match_home/models/models.dart';

class CircleProfile extends StatelessWidget {
  final User user;
  final Function onPressed;
  const CircleProfile({
    Key key,
    @required this.user,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          InkWell(
            onTap: onPressed,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(user.user_photo_1),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            user.user_realname,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
