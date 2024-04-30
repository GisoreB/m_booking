import '../../../core/app_export.dart';

/// This class is used in the [moviecardlist_item_widget] screen.
class MoviecardlistItemModel {
  MoviecardlistItemModel({
    this.avatarImage,
    this.movieTitle,
    this.genreText,
    this.releaseDateText,
    this.id,
  }) {
    avatarImage = avatarImage ?? Rx(ImageConstant.imgRectangle44);
    movieTitle = movieTitle ?? Rx("Avatar 2: The Way Of Water");
    genreText = genreText ?? Rx("Adventure, Sci-fi");
    releaseDateText = releaseDateText ?? Rx("20.12.2022");
    id = id ?? Rx("");
  }

  Rx<String>? avatarImage;

  Rx<String>? movieTitle;

  Rx<String>? genreText;

  Rx<String>? releaseDateText;

  Rx<String>? id;
}
