import '../../../core/app_export.dart';

/// This class is used in the [newsarticlelist_item_widget] screen.
class NewsarticlelistItemModel {
  NewsarticlelistItemModel({
    this.articleImage,
    this.articleTitle,
    this.id,
  }) {
    articleImage = articleImage ?? Rx(ImageConstant.imgRectangle36);
    articleTitle = articleTitle ??
        Rx("When The Batman 2 Starts Filming Reportedly Revealed");
    id = id ?? Rx("");
  }

  Rx<String>? articleImage;

  Rx<String>? articleTitle;

  Rx<String>? id;
}
