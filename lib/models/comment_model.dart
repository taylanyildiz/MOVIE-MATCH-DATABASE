import 'package:movie_match_home/models/models.dart';

class Comment {
  final int comment_id;
  final String comment_text;
  final User user;
  final String comment_time;

  Comment({
    this.comment_id,
    this.comment_text,
    this.user,
    this.comment_time,
  });
}
