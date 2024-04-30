import '../controller/movie_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MovieDetailScreen.
///
/// This class ensures that the MovieDetailController is created when the
/// MovieDetailScreen is first loaded.
class MovieDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetailController());
  }
}
