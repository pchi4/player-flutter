import 'package:flutter/material.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  double valueChange = 20;
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    // arguments['artists'][0]['name']
    // arguments['name']

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0,
        toolbarHeight: 0,
        title: const Text(
          '',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: height / 1.5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, bottom: 30.0, top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Icon(
                                Icons.expand_more,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 260,
                                child: ListTile(
                                  title: const Center(
                                      child: Text('TOCANDO DO ALBUM',
                                          style:
                                              TextStyle(color: Colors.white))),
                                  subtitle: Center(
                                      child: Text(arguments['nameAlbum'],
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: Colors.white54))),
                                ),
                              ),
                              const Icon(
                                Icons.more_vert,
                                size: 30,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.0),
                            child: Image.network(
                              arguments['img'][0]['url'],
                              width: width / 1.3,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                                child: ListTile(
                              title: Text(arguments['tracks']['name'],
                                  style: const TextStyle(color: Colors.white)),
                              subtitle: Text(
                                  arguments['tracks']['artists'][0]['name'],
                                  style:
                                      const TextStyle(color: Colors.white54)),
                            )),
                            const Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.all(4.0),
                            child: Slider(
                              value: valueChange,
                              max: 100,
                              onChanged: (double value) {
                                setState(() {
                                  valueChange = value;
                                });
                              },
                            ),
                          ),
                        ),
                        const Center(
                          child: IconsMenu(),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Column(
                              children: [
                                Image.network(
                                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c31b8f89-a809-446b-8275-a5adab4be586/d85o4zy-ecaafe3e-0d07-4dc4-8ead-0e9a48947e5b.png/v1/fill/w_300,h_300,q_80,strp/naruto_avatar_by_0bruno_d85o4zy-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzAwIiwicGF0aCI6IlwvZlwvYzMxYjhmODktYTgwOS00NDZiLTgyNzUtYTVhZGFiNGJlNTg2XC9kODVvNHp5LWVjYWFmZTNlLTBkMDctNGRjNC04ZWFkLTBlOWE0ODk0N2U1Yi5wbmciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.Q_50rAxj4yE1grYL00EVR6zdbtvhoJfq3Ihaw99lK8w',
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 200,
                                  child: Container(
                                    color: Colors.purple,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconsMenu extends StatelessWidget {
  const IconsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          Icons.shuffle,
          size: 20,
          color: Colors.white,
        ),
        Icon(
          Icons.skip_previous,
          size: 40,
          color: Colors.white,
        ),
        Icon(
          Icons.play_circle,
          size: 80,
          color: Colors.white,
        ),
        Icon(
          Icons.skip_next,
          size: 40,
          color: Colors.white,
        ),
        Icon(
          Icons.repeat,
          size: 20,
          color: Colors.white,
        ),
      ],
    );
  }
}
