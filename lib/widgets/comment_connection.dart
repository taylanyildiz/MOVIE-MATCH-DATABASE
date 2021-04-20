import 'package:flutter/material.dart';
import 'package:movie_match_home/data/data.dart';
import 'package:movie_match_home/models/models.dart';
import 'package:movie_match_home/widgets/widgets.dart';

class CommentConnection extends StatelessWidget {
  final Film film;

  const CommentConnection({
    Key key,
    @required this.film,
  }) : super(key: key);

  Future<List<Comment>> commentUser() async {
    final user = <Comment>[];
    user.clear();
    for (var i = 0; i < currentUser.connection.length; i++) {
      for (Comment c in film.comment) {
        if (currentUser.connection[i].user_id == c.user.user_id) {
          user.add(c);
        }
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 220.0,
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
          ),
          Expanded(
            child: Container(
              //color: Colors.red,
              child: FutureBuilder<List<Comment>>(
                future: commentUser(),
                builder: (context, constraint) {
                  if (constraint.hasData) {
                    List<Comment> user = constraint.data;
                    return ListView.builder(
                      //padding: EdgeInsets.symmetric(horizontal: 10.0),
                      scrollDirection: Axis.vertical,
                      itemCount: user.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${user[index].comment_time}.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                            ),
                            Row(
                              children: [
                                CircleProfile(
                                  fontSize: 15.0,
                                  isColumn: false,
                                  radius: 15.0,
                                  user: user[index].user,
                                  onPressed: () => print('user'),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      '${user[index].comment_text}',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                      overflow: TextOverflow.clip,
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    return Container(color: Colors.blue);
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
