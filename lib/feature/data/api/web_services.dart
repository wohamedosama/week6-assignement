import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week6_assignment/core/networking/api_constant.dart';
import 'package:week6_assignment/feature/data/model/popular_model.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;
  @GET(ApiConstants.popular)
  Future<List<PopularModel>> getPopularMovies();
}
