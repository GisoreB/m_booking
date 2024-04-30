import '../../../core/app_export.dart';
import 'slider_item_model.dart';
import 'moviecardlist_item_model.dart';
import 'userprofilelist_item_model.dart';
import 'newsarticlelist_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<SliderItemModel>> sliderItemList = Rx([
    SliderItemModel(image: ImageConstant.imgRectangle45.obs),
    SliderItemModel(image: ImageConstant.imgRectangle46.obs),
    SliderItemModel(image: ImageConstant.imgRectangle47.obs)
  ]);

  Rx<List<MoviecardlistItemModel>> moviecardlistItemList = Rx([
    MoviecardlistItemModel(
        avatarImage: ImageConstant.imgRectangle44.obs,
        movieTitle: "Avatar 2: The Way Of Water".obs,
        genreText: "Adventure, Sci-fi".obs,
        releaseDateText: "20.12.2022".obs),
    MoviecardlistItemModel(
        avatarImage: ImageConstant.imgRectangle44244x173.obs,
        movieTitle: "Ant Man Wasp: Quantumania".obs,
        genreText: "Adventure, Sci-fi".obs,
        releaseDateText: "25.12.2022".obs),
    MoviecardlistItemModel(
        avatarImage: ImageConstant.imgRectangle441.obs,
        movieTitle: "Fox puss in Boots: The last Wish".obs,
        genreText: "Adventure".obs,
        releaseDateText: "27.12.2022".obs)
  ]);

  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse41.obs, userName: "Retal".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse4180x80.obs, userName: "Imax".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse411.obs, userName: "4DX".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse412.obs, userName: "Sweetbox".obs)
  ]);

  Rx<List<NewsarticlelistItemModel>> newsarticlelistItemList = Rx([
    NewsarticlelistItemModel(
        articleImage: ImageConstant.imgRectangle36.obs,
        articleTitle:
            "When The Batman 2 Starts Filming Reportedly Revealed".obs),
    NewsarticlelistItemModel(
        articleImage: ImageConstant.imgRectangle36135x239.obs,
        articleTitle:
            "6 Epic Hulk Fights That Can Happen In The MCU's Future ".obs)
  ]);
}
