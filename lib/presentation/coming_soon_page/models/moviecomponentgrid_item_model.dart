import '../../../core/app_export.dart';

/// This class is used in the [moviecomponentgrid_item_widget] screen.
class MoviecomponentgridItemModel {
  MoviecomponentgridItemModel({
    this.avatarImage,
    this.movieTitle,
    this.releaseDate,
    this.genreText,
    this.id,
  }) {
    avatarImage = avatarImage ?? Rx(ImageConstant.imgRectangle445);
    movieTitle = movieTitle ?? Rx("Avatar 2: The Way Of Water");
    releaseDate = releaseDate ?? Rx("20.12.2022");
    genreText = genreText ?? Rx("Adventure, Sci-fi");
    id = id ?? Rx("");
  }

  Rx<String>? avatarImage;

  Rx<String>? movieTitle;

  Rx<String>? releaseDate;

  Rx<String>? genreText;

  Rx<String>? id;
}
