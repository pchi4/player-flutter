import 'package:flutter/material.dart';
import 'package:player_flutter/repositories/album_repositories.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    final dataAlbums = AlbumRepositories.albums;

    dataAlbums.forEach((value) {
      print(value.images[0]['url']);
    });

    // ignore: unnecessary_null_comparison
    return Scaffold(
      body: GridView.builder(
        itemCount: 6,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Container(
                color: Colors.black,
                width: 250,
                height: 250,
                child: Image.network(
                    'https://i.scdn.co/image/ab67616d0000b273cec31736d4e88743ce5bb414'),
              ),
            ),
          );
        },
      ),
    );
  }
}
