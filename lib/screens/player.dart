import 'package:flutter/material.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    print(arguments);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text(
          '',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black54,
            child: Column(
              children: <Widget>[
                const Expanded(
                  flex: 3,
                  child: Center(
                    child: Text('a'),
                  ),
                ),
                Expanded(
                    child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      children: <Widget>[
                        Flexible(
                            child: ListTile(
                          title: Text(arguments['name']),
                          subtitle: Text(arguments['artists'][0]['name']),
                        )),
                        const Center(
                          child: Icon(Icons.favorite),
                        )
                      ],
                    ),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.shuffle,
                            size: 40,
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
                            size: 40,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
