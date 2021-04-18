import 'package:flutter/material.dart';
import 'package:movie_match_home/data/data.dart';
import 'package:movie_match_home/models/models.dart';

class ConnectionFilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Column(
        children: [
          _HeadWidget(),
          Divider(height: 10.0, thickness: .5, color: Colors.white),
          _ConnectionFilms(),
        ],
      ),
    );
  }
}

/// Head
class _HeadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            onPressed: () => print('search'),
          ),
        ],
      ),
    );
  }
}

/// Film Display
class _ConnectionFilms extends StatefulWidget {
  _ConnectionFilms({Key key}) : super(key: key);
  @override
  __ConnectionFilmsState createState() => __ConnectionFilmsState();
}

class __ConnectionFilmsState extends State<_ConnectionFilms> {
  PageController _pageController;
  int curretnPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 3, viewportFraction: 0.3);
  }

  Future<List<Film>> connectionFilm() async {
    final films = <Film>[];
    final connectionFilm = <Film>[];
    currentUser.connection.clear();
    films.clear();
    await addConnection(listUser[6]);
    await addConnection(listUser[2]);
    for (var i = 0; i < currentUser.connection.length; i++) {
      for (Film f in listFilm) {
        for (var j = 0; j < f.user.length; j++) {
          if (f.user[j].user_id == currentUser.connection[i].user_id) {
            if (films.isEmpty)
              films.add(f);
            else {
              for (var i = 0; i < films.length; i++) {
                if (films[i].film_id != f.film_id) {
                  films.add(f);
                  break;
                }
              }
            }
          }
        }
      }
    }
    return films;
  }

  Future addConnection(User user) async {
    currentUser.connection.add(user);
  }

  Widget pageViewWidget(context, index, List<Film> film) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        var value = 1.0;
        if (_pageController.position.hasContentDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            width: Curves.easeInOut.transform(value) * 120.0,
            height: Curves.easeInOut.transform(value) * 200.0,
            child: child,
          ),
        );
      },
      child: _displayConnectionFilms(context, index, film),
    );
  }

  _onPageChanged(page) {
    setState(() {
      curretnPage = page;
    });
  }

  Widget _displayConnectionFilms(context, index, List<Film> films) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            margin: EdgeInsets.all(3.0),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: curretnPage == index
                  ? Border.all(width: 5.0, color: Colors.red)
                  : null,
            ),
            child: Image.asset(
              films[index].film_imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        curretnPage == index
            ? Positioned(
                bottom: 0.0,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                        Text(
                          '${films[index].user.length}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5.0),
                    Column(
                      children: [
                        Icon(
                          Icons.comment,
                          color: Colors.white,
                        ),
                        Text(
                          '${films[index].comment.length}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FutureBuilder<List<Film>>(
          future: connectionFilm(),
          builder: (context, constraint) {
            if (constraint.hasData) {
              final film = constraint.data;
              return PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (page) => _onPageChanged(page),
                itemCount: film.length,
                itemBuilder: (context, index) =>
                    pageViewWidget(context, index, film),
              );
            } else {
              return Container(
                margin: const EdgeInsets.all(5.0),
                color: Colors.white,
                child: Center(child: Text('Error')),
              );
            }
          },
        ),
      ),
    );
  }
}
