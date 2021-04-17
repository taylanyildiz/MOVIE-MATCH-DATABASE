import 'package:flutter/material.dart';
import 'package:movie_match_home/data/data.dart';
import 'package:movie_match_home/models/film_model.dart';

class WatchedFilm extends StatelessWidget {
  Future<List<Film>> watchedFilm() async {
    final currentFilm = <Film>[];

    for (Film f in listFilm) {
      for (var i = 0; i < f.user.length; i++) {
        if (currentUser.user_id == f.user[i].user_id) {
          currentFilm.add(f);
        }
      }
    }
    return currentFilm;
  }

  _displayFilm(context, index, List<Film> films) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        GestureDetector(
          onTap: () => print('movies'),
          child: Container(
            margin: EdgeInsets.all(5.0),
            width: 100.0,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.5),
                  blurRadius: 5.0,
                  offset: Offset(5.0, 5.0),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                films[index].film_imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'İzlediklerin',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  color: Colors.blue,
                  icon: Icon(Icons.more_vert),
                  onPressed: () => print('more'),
                ),
              ],
            ),
          ),
          Divider(height: 10.0, thickness: .5, color: Colors.white),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: FutureBuilder<List<Film>>(
                future: watchedFilm(),
                builder: (context, consrtraint) {
                  if (consrtraint.hasData) {
                    var films = consrtraint.data;
                    print(films.length);
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: films.length,
                      itemBuilder: (context, index) =>
                          _displayFilm(context, index, films),
                    );
                  } else {
                    return Container(
                      margin: EdgeInsets.all(5.0),
                      height: double.infinity,
                      width: 100.0,
                      color: Colors.blue,
                    );
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
