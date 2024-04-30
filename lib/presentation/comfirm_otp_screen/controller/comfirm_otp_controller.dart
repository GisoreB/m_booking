import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/comfirm_otp_screen/models/comfirm_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the ComfirmOtpScreen.
///
/// This class manages the state of the ComfirmOtpScreen, including the
/// current comfirmOtpModelObj
class ComfirmOtpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ComfirmOtpModel> comfirmOtpModelObj = ComfirmOtpModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
