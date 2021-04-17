import 'package:flutter/material.dart';

class WatchedFilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Column(
        children: [
          Row(
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
          Divider(height: 10.0, thickness: .5, color: Colors.white),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
