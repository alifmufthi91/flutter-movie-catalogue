import 'package:flurest/models/movieResponse.dart';
import 'package:flurest/networking/ApiBaseHelper.dart';
import 'package:flurest/utils/ApiKey.dart';
import 'package:flurest/models/Movie.dart';

class MovieRepository {
  final String _apiKey = apiKey;

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper.get("movie/popular?api_key=$_apiKey");
    return MovieResponse.fromJson(response).results;
  }
}
