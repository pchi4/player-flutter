import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String imgUrl;
  final String nameArtist;
  final String nameAlbum;
  const Cards(
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
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(imgUrl),
            ),
          ),
          SizedBox(
            width: 200,
            child: Text(
              nameAlbum,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: const TextStyle(fontWeight: FontWeight.bold, height: 1.5),
            ),
          ),
          Text(nameArtist),
        ],
      ),
    );
  }
}
