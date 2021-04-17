import 'package:flutter/material.dart';
import 'package:movie_match_home/models/models.dart';

class Film {
  final int film_id;
  final String film_name;
  final String film_img;
  final String film_about;
  final String film_director;
  final String film_cast;
  final User user;

  Film({
    @required this.film_id,
    @required this.film_name,
    @required this.film_img,
    @required this.film_about,
    @required this.film_director,
    @required this.film_cast,
    @required this.user,
  });
}
