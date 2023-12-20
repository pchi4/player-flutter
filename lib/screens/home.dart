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

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
            width: 20,
            child: ClipOval(
              child: Image.network(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c31b8f89-a809-446b-8275-a5adab4be586/d85o4zy-ecaafe3e-0d07-4dc4-8ead-0e9a48947e5b.png/v1/fill/w_300,h_300,q_80,strp/naruto_avatar_by_0bruno_d85o4zy-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzAwIiwicGF0aCI6IlwvZlwvYzMxYjhmODktYTgwOS00NDZiLTgyNzUtYTVhZGFiNGJlNTg2XC9kODVvNHp5LWVjYWFmZTNlLTBkMDctNGRjNC04ZWFkLTBlOWE0ODk0N2U1Yi5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.Q_50rAxj4yE1grYL00EVR6zdbtvhoJfq3Ihaw99lK8w',
                width: 50,
                height: 50,
              ),
            )),
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text(
          'Bem vindo',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: CustomScrollView(
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
                                arguments: dataAlbums[index].toJson()),
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
      ),
    );
  }
}
