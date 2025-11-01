import 'package:get_it/get_it.dart';
import 'package:week6_assignment/core/networking/dio_factory.dart';
import 'package:week6_assignment/feature/data/api/web_services.dart';
import 'package:week6_assignment/feature/data/repo/popular_repo.dart';

final GetIt getIt = GetIt.instance;
void setupDependencyInjection() {
  DioFactory.getDio();
  getIt.registerLazySingleton<WebServices>(
    () => WebServices(DioFactory.getDio()),
  );
  getIt.registerLazySingleton<PopularRepo>(() => PopularRepo(getIt()));
  //getIt.registerLazySingleton<PopularBloc>(() => PopularBloc(getIt()));
}
