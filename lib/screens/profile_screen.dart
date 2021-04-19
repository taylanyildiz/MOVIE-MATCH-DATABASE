import 'package:flutter/material.dart';
import 'package:movie_match_home/data/data.dart';

class ProfileScreen extends StatelessWidget {
  Future<List<String>> profilePhotos() async {
    final img = <String>[];
    for (var i = 0; i < 3; i++) {}
  }

  _displayProfilePhoto(context, index, img) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),
            flexibleSpace: FlexibleSpaceBar(
              background: FutureBuilder<List<String>>(
                future: profilePhotos(),
                builder: (context, constraint) {
                  if (constraint.hasData) {
                    var img = constraint.data;
                    return PageView.builder(
                      itemBuilder: (context, index) =>
                          _displayProfilePhoto(context, index, img),
                    );
                  } else {
                    return Container();
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
