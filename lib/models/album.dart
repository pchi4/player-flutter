class Album {
  String album_type;
  List artists;
  List copyrights;
  Object external_ids;
  Object external_urls;
  List genres;
  String href;
  String id;
  List images;
  String label;
  String name;
  num popularity;
  String release_date;
  String release_date_precision;
  num total_tracks;
  Object tracks;
  String type;
  String uri;

  Album(
      {required this.href,
      required this.album_type,
      required this.artists,
      required this.copyrights,
      required this.external_ids,
      required this.external_urls,
      required this.genres,
      required this.id,
      required this.images,
      required this.label,
      required this.name,
      required this.popularity,
      required this.release_date,
      required this.release_date_precision,
      required this.total_tracks,
      required this.tracks,
      required this.type,
      required this.uri});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "album_type": album_type,
      "artists": artists,
      "copyrights": copyrights,
      "external_ids": external_ids,
      "external_urls": external_urls,
      "genres": genres,
      "href": href,
      "id": id,
      "images": images,
      "label": label,
      "popularity": popularity,
      "release_date": release_date,
      "release_date_precision": release_date_precision,
      "total_tracks": total_tracks,
      "tracks": tracks,
      "type": type,
      "uri": uri,
    };
  }
}
