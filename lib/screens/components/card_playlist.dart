import 'package:flutter/material.dart';

class CardPlaylist extends StatelessWidget {
  final String imgUrl;
  final String nameArtist;
  final String nameAlbum;
  const CardPlaylist(
      {super.key,
      required this.imgUrl,
      required this.nameAlbum,
      required this.nameArtist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0, left: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: SizedBox(
              child: Image.network(
                imgUrl,
                width: 200,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: SizedBox(
              width: 180,
              child: Text(
                nameAlbum,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 2,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              const Text(
                'Album  ° ',
                style: TextStyle(color: Colors.white38),
              ),
              Text(
                nameArtist,
                style: const TextStyle(
                  color: Colors.white38,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
