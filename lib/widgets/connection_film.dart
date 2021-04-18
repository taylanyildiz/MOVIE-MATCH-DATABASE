import 'package:flutter/material.dart';
import 'package:movie_match_home/data/data.dart';
import 'package:movie_match_home/models/models.dart';
import 'package:movie_match_home/widgets/circle_user.dart';

class ConnectionFilm extends StatelessWidget {
  Future<List<Film>> connections() async {
    final connectionFilm = <Film>[];
    currentUser.connection.add(listUser[2]);
    currentUser.connection.add(listUser[1]);
    for (Film f in listFilm) {
      for (var i = 0; i < f.user.length; i++) {
        if (currentUser.connection[i < 2 ? i : 1].user_id ==
            f.user[i].user_id) {
          connectionFilm.add(f);
        }
      }
    }
    return connectionFilm;
  }

  _displayConnectionFilm(context, index, List<Film> films) {
    return GestureDetector(
      onTap: () => print('connections film'),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            margin: const EdgeInsets.all(5.0),
            height: double.infinity,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                films[index].film_imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Arkadaşlarının izledikleri',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  color: Colors.blue,
                  icon: Icon(Icons.search),
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
                future: connections(),
                builder: (context, constraint) {
                  if (constraint.hasData) {
                    List<Film> films = constraint.data;
                    print(films.length);
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: films.length,
                      itemBuilder: (context, index) =>
                          _displayConnectionFilm(context, index, films),
                    );
                  } else {
                    return Container(
                      margin: const EdgeInsets.all(15.0),
                      width: 100.0,
                      height: double.infinity,
                      color: Colors.white,
                      child: Center(child: Text('error')),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
