import '../coming_soon_page/widgets/moviecomponentgrid_item_widget.dart';
import 'controller/coming_soon_controller.dart';
import 'models/coming_soon_model.dart';
import 'models/moviecomponentgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

class ComingSoonPage extends StatelessWidget {
  ComingSoonPage({Key? key})
      : super(
          key: key,
        );

  ComingSoonController controller =
      Get.put(ComingSoonController(ComingSoonModel().obs));

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
              _buildMovieComponentGrid(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMovieComponentGrid() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 371.v,
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: controller.comingSoonModelObj.value
                .moviecomponentgridItemList.value.length,
            itemBuilder: (context, index) {
              MoviecomponentgridItemModel model = controller.comingSoonModelObj
                  .value.moviecomponentgridItemList.value[index];
              return MoviecomponentgridItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
