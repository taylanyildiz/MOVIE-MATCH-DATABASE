import 'package:flutter/cupertino.dart';

class Comment {
  final int comment_id;
  final bool isMovie;
  final String comment_txt;

  Comment({
    @required this.comment_id,
    @required this.comment_txt,
    @required this.isMovie,
  });
}
