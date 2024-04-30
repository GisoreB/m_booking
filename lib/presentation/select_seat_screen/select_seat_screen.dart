import '../select_seat_screen/widgets/listselectseat_item_widget.dart';
import 'controller/select_seat_controller.dart';
import 'models/listselectseat_item_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_leading_image.dart';
import 'package:m_booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:m_booking/widgets/custom_checkbox_button.dart';
import 'package:m_booking/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SelectSeatScreen extends GetWidget<SelectSeatController> {
  const SelectSeatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame436,
                          height: 84.v,
                          width: 430.h,
                        ),
                        SizedBox(height: 16.v),
                        _buildCalendar(),
                        SizedBox(height: 24.v),
                        _buildRowFrame(),
                        SizedBox(height: 38.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_select_date_time".tr,
                            style: CustomTextStyles.titleLargeSemiBold,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        _buildHorizontalScroll(),
                        SizedBox(height: 24.v),
                        _buildListSelectSeat(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildRowFrame1(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_select_seat".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar() {
    return Obx(
      () => SizedBox(
        height: 316.v,
        width: 463.h,
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.single,
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime(DateTime.now().year + 5),
            firstDayOfWeek: 0,
          ),
          value: controller.selectedDatesFromCalendar1.value,
          onValueChanged: (dates) {
            controller.selectedDatesFromCalendar1.value = dates;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowFrame() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => CustomCheckboxButton(
                text: "lbl_available".tr,
                value: controller.available.value,
                padding: EdgeInsets.symmetric(vertical: 2.v),
                onChange: (value) {
                  controller.available.value = value;
                },
              ),
            ),
            Container(
              width: 246.h,
              margin: EdgeInsets.only(left: 61.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray90002,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_reserved".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_selected".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Obx(
          () => SizedBox(
            height: 104.v,
            width: 513.h,
            child: EasyDateTimeLine(
              initialDate: controller.selectedDatesFromCalendar2.value,
              locale: 'en_US',
              headerProps: EasyHeaderProps(
                selectedDateFormat: SelectedDateFormat.fullDateDMY,
                monthPickerType: MonthPickerType.switcher,

                //TODO: You can toggle header visibility from here
                showHeader: false,
              ),
              dayProps: EasyDayProps(
                width: 52.h,
                height: 104.v,
              ),
              onDateChange: (selectedDate) {
                controller.selectedDatesFromCalendar2.value = selectedDate;
              },
              itemBuilder: (context, dayNumber, dayName, monthName, fullDate,
                  isSelected) {
                return isSelected
                    ? Container(
                        width: 52.h,
                        padding: EdgeInsets.all(4.h),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            26.h,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 15.v,
                                  right: 5.h,
                                ),
                                child: Text(
                                  dayName.toString(),
                                  style: CustomTextStyles.titleMediumBlack900
                                      .copyWith(
                                    color: appTheme.black900,
                                  ),
                                ),
                              ),
                              Container(
                                width: 52.h,
                                margin: EdgeInsets.only(top: 16.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 11.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.gray900,
                                  borderRadius: BorderRadius.circular(
                                    22.h,
                                  ),
                                ),
                                child: Text(
                                  dayNumber.toString(),
                                  style: theme.textTheme.titleMedium!.copyWith(
                                    color: appTheme.gray100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        width: 52.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.h,
                          vertical: 4.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.gray90001,
                          borderRadius: BorderRadius.circular(
                            26.h,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15.v),
                                child: Text(
                                  dayName.toString(),
                                  style: theme.textTheme.titleMedium!.copyWith(
                                    color: appTheme.gray100,
                                  ),
                                ),
                              ),
                              Container(
                                width: 52.h,
                                margin: EdgeInsets.only(top: 17.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 11.v,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(
                                    22.h,
                                  ),
                                ),
                                child: Text(
                                  dayNumber.toString(),
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium!.copyWith(
                                    color: appTheme.gray100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListSelectSeat() {
    return SizedBox(
      height: 36.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller
              .selectSeatModelObj.value.listselectseatItemList.value.length,
          itemBuilder: (context, index) {
            ListselectseatItemModel model = controller
                .selectSeatModelObj.value.listselectseatItemList.value[index];
            return ListselectseatItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowFrame1() {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 40.v,
      ),
      decoration: AppDecoration.outlineBluegray90001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_total".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_210_000_vnd".tr,
                    style: CustomTextStyles.headlineSmallPrimary,
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 191.h,
            text: "lbl_but_ticket".tr,
          ),
        ],
      ),
    );
  }
}
