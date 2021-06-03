import 'package:duqin/components/song_card.dart';
import 'package:flutter/material.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext buildContext, int index) {
          return Column(
            children: [
              SizedBox(
                height: 12,
              ),
              SongCard(),
            ],
          );
        });
  }
}
