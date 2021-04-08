import 'dart:convert';

import 'package:beautiful_ui/models/anime.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AnimeBuilder extends StatelessWidget {
  const AnimeBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Anime>(
      future: getAnime(),
      builder: (context, snapshot) {
        final Anime anime = snapshot.data;
        print(anime);

        if (anime != null) {
          return Text(anime.toString());
        }

        return Text('loading...');
      },
      // initialData: new Anime('none', 'none', 'none'),
    );
  }
}

Future<Anime> getAnime() async {
  const url = 'https://animechan.vercel.app/api/random';
  final uri = Uri.parse(url);
  try {
    final result = await http.get(uri);
    final Map<String, Object> data = json.decode(result.body);
    final anime = Anime.fromJson(data);
    return anime;
  } catch (e) {
    return new Anime('none', 'none', 'none');
  }
}
