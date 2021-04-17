import 'package:flutter/cupertino.dart';
import 'package:movie_match_home/models/models.dart';

class Like {
  final int like_id;
  final User user;
  final bool like_type;
  final String like_time;
  bool like_active;

  Like({
    @required this.like_id,
    @required this.user,
    @required this.like_time,
    @required this.like_type,
    this.like_active = false,
  });
}
