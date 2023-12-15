import 'package:flutter/material.dart';
import 'package:player_flutter/repositories/album_repositories.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    final List tracks = [
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 212706,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/596pY5JqwSgSqM8cA4A0rg"
        },
        "href": "https://api.spotify.com/v1/tracks/596pY5JqwSgSqM8cA4A0rg",
        "id": "596pY5JqwSgSqM8cA4A0rg",
        "is_local": false,
        "name": "God Is a Circle",
        "preview_url":
            "https://p.scdn.co/mp3-preview/baee62356568d9909a5eaa7d891a33df8bbc6bd6?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 1,
        "type": "track",
        "uri": "spotify:track:596pY5JqwSgSqM8cA4A0rg"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 195333,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/3d5z2JmzB2W97ERw1Q09f0"
        },
        "href": "https://api.spotify.com/v1/tracks/3d5z2JmzB2W97ERw1Q09f0",
        "id": "3d5z2JmzB2W97ERw1Q09f0",
        "is_local": false,
        "name": "Lovely Sewer",
        "preview_url":
            "https://p.scdn.co/mp3-preview/1b6e98395a5b253b04549c04695cac7a947ec605?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 2,
        "type": "track",
        "uri": "spotify:track:3d5z2JmzB2W97ERw1Q09f0"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 227706,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/0KtYUlIhPf0fLpmJRT73yM"
        },
        "href": "https://api.spotify.com/v1/tracks/0KtYUlIhPf0fLpmJRT73yM",
        "id": "0KtYUlIhPf0fLpmJRT73yM",
        "is_local": false,
        "name": "Meteora Blues",
        "preview_url":
            "https://p.scdn.co/mp3-preview/a841cc487a34d1aece82f3969b1c0fb6e79c5448?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 3,
        "type": "track",
        "uri": "spotify:track:0KtYUlIhPf0fLpmJRT73yM"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 52106,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/4Lv32NSVbqOOjw6CCLGgEc"
        },
        "href": "https://api.spotify.com/v1/tracks/4Lv32NSVbqOOjw6CCLGgEc",
        "id": "4Lv32NSVbqOOjw6CCLGgEc",
        "is_local": false,
        "name": "Interlude",
        "preview_url":
            "https://p.scdn.co/mp3-preview/57ccb4b69acd597296202dceb083077bf8b3f87f?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 4,
        "type": "track",
        "uri": "spotify:track:4Lv32NSVbqOOjw6CCLGgEc"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 186493,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/4oWHRC1mCSSJhNv3YoUlBc"
        },
        "href": "https://api.spotify.com/v1/tracks/4oWHRC1mCSSJhNv3YoUlBc",
        "id": "4oWHRC1mCSSJhNv3YoUlBc",
        "is_local": false,
        "name": "Parody",
        "preview_url":
            "https://p.scdn.co/mp3-preview/0dabac4811a25d9dde8512ea4ad512ce57498976?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 5,
        "type": "track",
        "uri": "spotify:track:4oWHRC1mCSSJhNv3YoUlBc"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 246400,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/6jCaLfO4BcwoLDpMKgSFkp"
        },
        "href": "https://api.spotify.com/v1/tracks/6jCaLfO4BcwoLDpMKgSFkp",
        "id": "6jCaLfO4BcwoLDpMKgSFkp",
        "is_local": false,
        "name": "Heaven Surrounds Us Like a Hood",
        "preview_url":
            "https://p.scdn.co/mp3-preview/b1c0d22d2cc423e92c750af4bc7f6991e8051995?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 6,
        "type": "track",
        "uri": "spotify:track:6jCaLfO4BcwoLDpMKgSFkp"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 196026,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/6wsmCMlFGX4jOko2I3bUtb"
        },
        "href": "https://api.spotify.com/v1/tracks/6wsmCMlFGX4jOko2I3bUtb",
        "id": "6wsmCMlFGX4jOko2I3bUtb",
        "is_local": false,
        "name": "Operator",
        "preview_url":
            "https://p.scdn.co/mp3-preview/1e47cbc174266d05052e2099ba1f260e8dc1bd54?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 7,
        "type": "track",
        "uri": "spotify:track:6wsmCMlFGX4jOko2I3bUtb"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 151840,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/6Py8cFkHK9rBY8RRHYpuQC"
        },
        "href": "https://api.spotify.com/v1/tracks/6Py8cFkHK9rBY8RRHYpuQC",
        "id": "6Py8cFkHK9rBY8RRHYpuQC",
        "is_local": false,
        "name": "In Spite of War",
        "preview_url":
            "https://p.scdn.co/mp3-preview/5c14c7d3f8d6b81e46fcc25e2e1b8f0b657ae362?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 8,
        "type": "track",
        "uri": "spotify:track:6Py8cFkHK9rBY8RRHYpuQC"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 180146,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/20Co6wsSQkqMtZaQxtjz8a"
        },
        "href": "https://api.spotify.com/v1/tracks/20Co6wsSQkqMtZaQxtjz8a",
        "id": "20Co6wsSQkqMtZaQxtjz8a",
        "is_local": false,
        "name": "Echolalia",
        "preview_url":
            "https://p.scdn.co/mp3-preview/f05c0c76f1e0c5fa652c30ce77ec6d34911e3e9a?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 9,
        "type": "track",
        "uri": "spotify:track:20Co6wsSQkqMtZaQxtjz8a"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 210840,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/1ddJPebD74sac45SLvdmWp"
        },
        "href": "https://api.spotify.com/v1/tracks/1ddJPebD74sac45SLvdmWp",
        "id": "1ddJPebD74sac45SLvdmWp",
        "is_local": false,
        "name": "Fear Evil Like Fire",
        "preview_url":
            "https://p.scdn.co/mp3-preview/8afe86776d0e002da857e98763e94ccf6ad31d18?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 10,
        "type": "track",
        "uri": "spotify:track:1ddJPebD74sac45SLvdmWp"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 193373,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/2FoT6FoaIdh8hvePaIXYXr"
        },
        "href": "https://api.spotify.com/v1/tracks/2FoT6FoaIdh8hvePaIXYXr",
        "id": "2FoT6FoaIdh8hvePaIXYXr",
        "is_local": false,
        "name": "Purified By the Fire",
        "preview_url":
            "https://p.scdn.co/mp3-preview/ce4f612b3cb9c95a42fc8de30a3070dedf242d66?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 11,
        "type": "track",
        "uri": "spotify:track:2FoT6FoaIdh8hvePaIXYXr"
      },
      {
        "artists": [
          {
            "external_urls": {
              "spotify":
                  "https://open.spotify.com/artist/0qu422H5MOoQxGjd4IzHbS"
            },
            "href": "https://api.spotify.com/v1/artists/0qu422H5MOoQxGjd4IzHbS",
            "id": "0qu422H5MOoQxGjd4IzHbS",
            "name": "Yves Tumor",
            "type": "artist",
            "uri": "spotify:artist:0qu422H5MOoQxGjd4IzHbS"
          }
        ],
        "disc_number": 1,
        "duration_ms": 196853,
        "explicit": false,
        "external_urls": {
          "spotify": "https://open.spotify.com/track/2BpnrXMYUyXIuBBmEKX52U"
        },
        "href": "https://api.spotify.com/v1/tracks/2BpnrXMYUyXIuBBmEKX52U",
        "id": "2BpnrXMYUyXIuBBmEKX52U",
        "is_local": false,
        "name": "Ebony Eye",
        "preview_url":
            "https://p.scdn.co/mp3-preview/2b03385c48bc2ad1e339c6ecb886d23a911eb989?cid=0e7989953adc4c5cba284909c50fe613",
        "track_number": 12,
        "type": "track",
        "uri": "spotify:track:2BpnrXMYUyXIuBBmEKX52U"
      }
    ];

    final AlbumsData = AlbumRepositories.albums;

    // final routes = ModalRoute.of(context)?.settings.arguments;
    // print(routes);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text(
          '',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: Colors.black54,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              fillOverscroll: true,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: ListView(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.network(AlbumsData[0].images[0]['url']),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                      child: Text(
                        AlbumsData[0].name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 3.2),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.network(
                            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c31b8f89-a809-446b-8275-a5adab4be586/d85o4zy-ecaafe3e-0d07-4dc4-8ead-0e9a48947e5b.png/v1/fill/w_300,h_300,q_80,strp/naruto_avatar_by_0bruno_d85o4zy-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzAwIiwicGF0aCI6IlwvZlwvYzMxYjhmODktYTgwOS00NDZiLTgyNzUtYTVhZGFiNGJlNTg2XC9kODVvNHp5LWVjYWFmZTNlLTBkMDctNGRjNC04ZWFkLTBlOWE0ODk0N2U1Yi5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.Q_50rAxj4yE1grYL00EVR6zdbtvhoJfq3Ihaw99lK8w',
                            width: 25,
                            height: 25,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Yves Tumor',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: TextStyle(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.green,
                                size: 24.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.arrow_circle_down,
                                color: Colors.green,
                                size: 24.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.green,
                                size: 24.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                            )
                          ],
                        ),
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
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: tracks.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            subtitle: Text(
                              tracks[index]["artists"][0]["name"],
                              style: const TextStyle(color: Colors.white54),
                            ),
                            key: ValueKey(index),
                            title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    tracks[index]["name"],
                                    style: const TextStyle(color: Colors.white),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
