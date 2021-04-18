import 'package:flutter/material.dart';
import 'package:movie_match_home/models/models.dart';

class CircleProfile extends StatelessWidget {
  final User currentUser;
  final Function onPressed;
  const CircleProfile({
    Key key,
    @required this.currentUser,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          InkWell(
            onTap: onPressed,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(currentUser.user_photo_1),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            currentUser.user_realname,
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
