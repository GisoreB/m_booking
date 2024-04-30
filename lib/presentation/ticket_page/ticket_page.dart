import '../ticket_page/widgets/moviecard_item_widget.dart';
import 'controller/ticket_controller.dart';
import 'models/moviecard_item_model.dart';
import 'models/ticket_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';

class TicketPage extends StatelessWidget {
  TicketPage({Key? key})
      : super(
          key: key,
        );

  TicketController controller = Get.put(TicketController(TicketModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              _buildMovieCard(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_ticket".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildMovieCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount:
              controller.ticketModelObj.value.moviecardItemList.value.length,
          itemBuilder: (context, index) {
            MoviecardItemModel model =
                controller.ticketModelObj.value.moviecardItemList.value[index];
            return MoviecardItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
