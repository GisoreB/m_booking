import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/movie_detail_screen/models/movie_detail_model.dart';

/// A controller class for the MovieDetailScreen.
///
/// This class manages the state of the MovieDetailScreen, including the
/// current movieDetailModelObj
class MovieDetailController extends GetxController {
  Rx<MovieDetailModel> movieDetailModelObj = MovieDetailModel().obs;
}
