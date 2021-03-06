import 'package:flurest/models/Movie.dart';

class MovieResponse {
  int page;
  int totalPages;
  int totalResults;
  List<Movie> results;

  MovieResponse({this.page, this.totalResults, this.totalPages, this.results});

  MovieResponse.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    totalResults = json['total_results'];
    if (json['results'] != null) {
      results = new List<Movie>();
      json['results'].forEach((v) {
        results.add(new Movie.fromJson(v));
      });
    }
  }
}
