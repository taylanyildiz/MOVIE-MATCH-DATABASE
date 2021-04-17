import 'package:flutter/cupertino.dart';
import 'package:movie_match_home/models/models.dart';

class User {
  final int user_id;
  final Account account;
  final List<Film> film;
  final List<Comment> comment;
  final List<Like> like;

  User({
    @required this.user_id,
    @required this.account,
    @required this.film,
    @required this.comment,
    @required this.like,
  });
}
