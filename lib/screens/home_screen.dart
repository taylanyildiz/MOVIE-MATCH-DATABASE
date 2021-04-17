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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201D1D),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              )),
              toolbarHeight: 120.0,
              backgroundColor: Colors.black,
              leadingWidth: 150.0,
              leading: Row(
                children: [
                  CircleButton(
                    icon: Icon(Icons.search),
                    onPressed: () => print('search'),
                    iconSize: 30.0,
                  ),
                  CircleButton(
                    icon: Icon(Icons.share),
                    onPressed: () => print('share'),
                    iconSize: 30.0,
                  ),
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
              padding: EdgeInsets.only(top: 10.0),
              sliver: SliverToBoxAdapter(
                child: WatchedFilm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
