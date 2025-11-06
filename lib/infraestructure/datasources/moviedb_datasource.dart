import 'package:cinecito/config/constants/environment.dart';
import 'package:cinecito/domain/datasources/movie_datasource.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDatasource
{
  final dio = Dio
  (
    BaseOptions
    (
      baseUrl: Environment.theBaseUrl,
      queryParameters: {'api_key': Environment.key, 'language': 'es-MX'},
    )
  );

  @override
  Future<List<Map<String,dynamic>>> getNowPlaying({int page = 1})
  {
    final response = await dio.get('/movie/now_playing');

    return List<Map<String,dynamic>>.from(response.data[])
  }
}