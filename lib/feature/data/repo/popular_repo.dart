import 'package:week6_assignment/core/networking/api_result.dart';
import 'package:week6_assignment/feature/data/api/web_services.dart';
import 'package:week6_assignment/feature/data/model/popular_model.dart';

class PopularRepo {
  final WebServices webServices;
  PopularRepo(this.webServices);
  Future<ApiResult<List<PopularModel>>> getPopularMovies() async {
    try {
      final response = await webServices.getPopularMovies();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
