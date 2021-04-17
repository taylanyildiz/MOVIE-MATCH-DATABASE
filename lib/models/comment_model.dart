import 'package:flutter/cupertino.dart';
import 'package:movie_match_home/models/models.dart';

class Comment {
  final int comment_id;
  final Film film;
  final String comment_txt;

  Comment({
    @required this.comment_id,
    @required this.comment_txt,
    @required this.film,
  });
}
