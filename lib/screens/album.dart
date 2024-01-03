import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          arguments['name'],
          style:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: SizedBox(
                          width: width / 2,
                          child: Image.network(arguments['images'][0]['url']),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              arguments['name'],
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 2.0),
                            )
                          ],
                        )),
                    Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.network(
                            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c31b8f89-a809-446b-8275-a5adab4be586/d85o4zy-ecaafe3e-0d07-4dc4-8ead-0e9a48947e5b.png/v1/fill/w_300,h_300,q_80,strp/naruto_avatar_by_0bruno_d85o4zy-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzAwIiwicGF0aCI6IlwvZlwvYzMxYjhmODktYTgwOS00NDZiLTgyNzUtYTVhZGFiNGJlNTg2XC9kODVvNHp5LWVjYWFmZTNlLTBkMDctNGRjNC04ZWFkLTBlOWE0ODk0N2U1Yi5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.Q_50rAxj4yE1grYL00EVR6zdbtvhoJfq3Ihaw99lK8w',
                            width: 25,
                            height: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            arguments['artists'][0]['name'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Row(
                      children: <Widget>[
                        Text(
                          'Álbum ° 2021',
                          style: TextStyle(color: Colors.black54, height: 2),
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconsMenu(),
                        Row(
                          children: [
                            Icon(
                              Icons.shuffle,
                              color: Colors.green,
                              size: 40.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.play_circle,
                              color: Colors.green,
                              size: 60.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: arguments['tracks']['items'].length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              onTap: () => Navigator.pushNamed(
                                context,
                                '/player',
                                arguments: {
                                  'tracks': arguments['tracks']['items'][index],
                                  'img': arguments['images'],
                                  'nameAlbum': arguments['name'],
                                },
                              ),
                              subtitle: Text(
                                arguments['artists'][0]['name'],
                                style: const TextStyle(color: Colors.white54),
                              ),
                              key: ValueKey(index),
                              title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      arguments['tracks']['items'][index]
                                          ['name'],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    const Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                      size: 24.0,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    )
                                  ]),
                            );
                          }),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class IconsMenu extends StatefulWidget {
  const IconsMenu({super.key});

  @override
  State<IconsMenu> createState() => _IconsMenuState();
}

class _IconsMenuState extends State<IconsMenu> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.favorite,
            color: Colors.green,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.arrow_circle_down,
            color: Colors.green,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.more_vert,
            color: Colors.green,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        )
      ],
    );
  }
}
