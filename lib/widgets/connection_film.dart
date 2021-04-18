import 'package:flutter/material.dart';
import 'package:movie_match_home/data/data.dart';
import 'package:movie_match_home/models/models.dart';

class ConnectionFilm extends StatelessWidget {
  Future<List<Film>> connections() async {
    final connectionFilm = <Film>[];
    currentUser.connection.add(listUser[0]);
    currentUser.connection.add(listUser[1]);
    for (var i = 0; i < currentUser.connection.length; i++) {
      if (currentUser.connection[i] == await filmUser()) {}
    }
  }

  Future<User> filmUser() async {
    for (Film f in listFilm) {
      for (var i = 0; i < f.user.length; i++) {
        return f.user[i];
      }
    }
  }

  _displayConnectionFilm(context, index, films) {
    return GestureDetector(
      onTap: () => print('connections film'),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.red,
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
          Expanded(
            child: FutureBuilder<List<Film>>(
              future: connections(),
              builder: (context, constraint) {
                if (constraint.hasData) {
                  List<Film> films = constraint.data;
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
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}