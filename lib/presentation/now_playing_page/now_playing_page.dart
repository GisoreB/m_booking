import '../now_playing_page/widgets/moviecomponent_item_widget.dart';
import 'controller/now_playing_controller.dart';
import 'models/moviecomponent_item_model.dart';
import 'models/now_playing_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

class NowPlayingPage extends StatelessWidget {
  NowPlayingPage({Key? key})
      : super(
          key: key,
        );

  NowPlayingController controller =
      Get.put(NowPlayingController(NowPlayingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              _buildMovieComponent(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMovieComponent() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 388.v,
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: controller
                .nowPlayingModelObj.value.moviecomponentItemList.value.length,
            itemBuilder: (context, index) {
              MoviecomponentItemModel model = controller
                  .nowPlayingModelObj.value.moviecomponentItemList.value[index];
              return MoviecomponentItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
