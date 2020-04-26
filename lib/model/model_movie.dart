class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Movie.formMap(Map<String, dynamic> map)
      : title = map['tietle'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];

  @override
  String toString() => "Movie<$title:$keyword>";
}