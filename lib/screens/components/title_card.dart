import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  final String title;

  const TitleCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      maxLines: 1,
      style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }
}
