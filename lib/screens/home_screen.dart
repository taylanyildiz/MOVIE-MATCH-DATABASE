import 'package:flutter/material.dart';
import 'package:movie_match_home/data/data.dart';
import 'package:movie_match_home/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({
    Key key,
    this.title,
  }) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isSearch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120.0,
          elevation: 0.0,
          backgroundColor: Colors.black,
          actions: [
            CircleProfile(
              currentUser: currentUser,
              onPressed: () => print('current user'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF201D1D),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(10.0),
              sliver: SliverToBoxAdapter(
                child: LiveUsers(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 10.0),
              sliver: SliverToBoxAdapter(
                child: CurrentFilm(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 10.0),
              sliver: SliverToBoxAdapter(
                child: ConnectionFilm(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CommentConnection();
                },
                childCount: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
