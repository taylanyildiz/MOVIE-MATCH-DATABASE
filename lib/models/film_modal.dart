import 'package:flutter/cupertino.dart';

class Film {
  final int film_id;
  final String film_name;
  final String film_img;
  final String film_about;

  Film({
    @required this.film_id,
    @required this.film_name,
    @required this.film_img,
    @required this.film_about,
  });
}
