import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/now_playing_page/models/now_playing_model.dart';

/// A controller class for the NowPlayingPage.
///
/// This class manages the state of the NowPlayingPage, including the
/// current nowPlayingModelObj
class NowPlayingController extends GetxController {
  NowPlayingController(this.nowPlayingModelObj);

  Rx<NowPlayingModel> nowPlayingModelObj;
}
