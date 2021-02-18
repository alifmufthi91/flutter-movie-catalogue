import 'package:flurest/networking/ApiBaseHelper.dart';
import 'package:flurest/utils/ApiKey.dart';
import 'package:flurest/models/Movie.dart';

class MovieDetailRepository {
  final String _apiKey = apiKey;

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<Movie> fetchMovieDetail(int selectedMovie) async {
    final response = await _helper.get("movie/$selectedMovie?api_key=$_apiKey");
    return Movie.fromJson(response);
  }
}
