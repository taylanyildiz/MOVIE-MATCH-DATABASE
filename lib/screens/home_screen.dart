import 'package:flutter/material.dart';
import 'package:movie_match_home/data/data.dart';
import 'package:movie_match_home/widgets/current_user_avatar.dart';

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
              backgroundColor: Colors.black,
              leading: Row(
                children: [],
              ),
              actions: [
                CurrentUserAvatar(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
