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
    return Scaffold(
      backgroundColor: Color(0xFF201D1D),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            primary: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),
            toolbarHeight: 120.0,
            backgroundColor: Colors.black,
            leadingWidth: 200.0,
            leading: Row(
              children: [
                CircleButton(
                  icon: Icon(isSearch ? Icons.search_off : Icons.search),
                  onPressed: () => setState(() => isSearch = !isSearch),
                  iconSize: 30.0,
                ),
                CircleButton(
                  icon: Icon(Icons.share),
                  onPressed: () => print('share'),
                  iconSize: 30.0,
                )
              ],
            ),
            actions: [
              CircleProfile(
                currentUser: currentUser,
                onPressed: () => print('profile'),
              ),
            ],
          ),
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
                return Container(
                  height: 100.0,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5.0),
                );
              },
              childCount: currentUser.connection.length,
            ),
          )
        ],
      ),
    );
  }
}
