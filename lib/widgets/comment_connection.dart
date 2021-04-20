import 'package:flutter/material.dart';
import 'package:movie_match_home/models/models.dart';
import 'package:movie_match_home/widgets/widgets.dart';

class CommentConnection extends StatelessWidget {
  final Film film;

  const CommentConnection({
    Key key,
    @required this.film,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                width: 120.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    film.film_imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                child: CircleButton(
                  onPressed: () => print('all comment'),
                  icon: Icons.comment,
                  iconSize: 25.0,
                  backgroundColor: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
