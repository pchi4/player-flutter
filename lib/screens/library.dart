import 'package:flutter/material.dart';
import 'package:player_flutter/repositories/album_repositories.dart';
import 'package:player_flutter/screens/components/card_playlist.dart';

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
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(
            top: 8.0,
            left: 8.0,
          ),
          child: CircleAvatar(
            radius: 60, // Image radius
            backgroundImage: NetworkImage(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c31b8f89-a809-446b-8275-a5adab4be586/d85o4zy-ecaafe3e-0d07-4dc4-8ead-0e9a48947e5b.png/v1/fill/w_300,h_300,q_80,strp/naruto_avatar_by_0bruno_d85o4zy-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzAwIiwicGF0aCI6IlwvZlwvYzMxYjhmODktYTgwOS00NDZiLTgyNzUtYTVhZGFiNGJlNTg2XC9kODVvNHp5LWVjYWFmZTNlLTBkMDctNGRjNC04ZWFkLTBlOWE0ODk0N2U1Yi5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.Q_50rAxj4yE1grYL00EVR6zdbtvhoJfq3Ihaw99lK8w'),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text(
          'Sua Biblioteca',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: const <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.add, color: Colors.white),
              )
            ],
          )
        ],
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: Row(
              children: [
                Text('asdad'),
                Text('asdad'),
                Text('asdad'),
                Text('asdad')
              ],
            )),
      ),
      body: GridView.builder(
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 35),
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding:
                EdgeInsets.only(bottom: 50.0, left: 8.0, right: 8.0, top: 8.0),
            child: CardPlaylist(
                imgUrl:
                    'https://i.scdn.co/image/ab67616d0000b2736f578b21bce56056473da7e6',
                nameAlbum: 'Let’s Start Here.',
                nameArtist: 'Lil Yachty'),
          );
        },
      ),
    );
  }
}

class CarrouselActions extends StatelessWidget {
  const CarrouselActions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          // onTap: () => Navigator.pushNamed(context, '/album',
          //     arguments: dataAlbums[index].toJson()),
          child: const Row(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 4.0),
              child: Text('Playlists'),
            )
          ]),
        );
      },
    );
  }
}
