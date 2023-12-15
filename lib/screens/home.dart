import 'package:flutter/material.dart';
import 'package:player_flutter/repositories/album_repositories.dart';
import 'package:player_flutter/screens/components/card.dart';
import 'package:player_flutter/screens/components/title_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dataAlbums = AlbumRepositories.albums;

    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          fillOverscroll: true,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: ListView(
              children: <Widget>[
                const TitleCard(title: 'Tocados recentemente'),
                SizedBox(
                  height: 300.0,
                  child: ListView.builder(
                      itemCount: dataAlbums.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/album',
                              arguments: {
                                "context": dataAlbums[index].toJson()
                              }),
                          child: Cards(
                            imgUrl: dataAlbums[index].images[0]['url'],
                            nameAlbum: dataAlbums[index].name,
                            nameArtist: dataAlbums[index].artists[0]['name'],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
