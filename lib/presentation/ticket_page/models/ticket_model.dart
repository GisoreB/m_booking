import '../../../core/app_export.dart';
import 'moviecard_item_model.dart';

/// This class defines the variables used in the [ticket_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TicketModel {
  Rx<List<MoviecardItemModel>> moviecardItemList = Rx([
    MoviecardItemModel(
        movieImage: ImageConstant.imgRectangle39.obs,
        movieTitle: "Avengers: Infinity War".obs,
        showtimeText: "14h15’ • 16.12.2022".obs,
        cinemaName: "Vincom Ocean Park CGV".obs),
    MoviecardItemModel(
        movieImage: ImageConstant.imgRectangle39138x99.obs,
        movieTitle: "Batman v Superman: Da ...".obs,
        showtimeText: "2h15m • 22.12.2022".obs,
        cinemaName: "Vincom Ocean Park CGV".obs),
    MoviecardItemModel(
        movieImage: ImageConstant.imgRectangle391.obs,
        movieTitle: "Guardians Of The Galaxy".obs,
        showtimeText: "14h15’ • 29.12.2022".obs,
        cinemaName: "Vincom Ocean Park CGV".obs)
  ]);
}
