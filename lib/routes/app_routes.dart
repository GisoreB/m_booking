import 'package:m_booking/presentation/sign_in_sign_up_screen/sign_in_sign_up_screen.dart';
import 'package:m_booking/presentation/sign_in_sign_up_screen/binding/sign_in_sign_up_binding.dart';
import 'package:m_booking/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:m_booking/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:m_booking/presentation/comfirm_otp_screen/comfirm_otp_screen.dart';
import 'package:m_booking/presentation/comfirm_otp_screen/binding/comfirm_otp_binding.dart';
import 'package:m_booking/presentation/enter_username_screen/enter_username_screen.dart';
import 'package:m_booking/presentation/enter_username_screen/binding/enter_username_binding.dart';
import 'package:m_booking/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:m_booking/presentation/home_page_container_screen/binding/home_page_container_binding.dart';
import 'package:m_booking/presentation/movie_detail_screen/movie_detail_screen.dart';
import 'package:m_booking/presentation/movie_detail_screen/binding/movie_detail_binding.dart';
import 'package:m_booking/presentation/select_seat_screen/select_seat_screen.dart';
import 'package:m_booking/presentation/select_seat_screen/binding/select_seat_binding.dart';
import 'package:m_booking/presentation/payment_screen/payment_screen.dart';
import 'package:m_booking/presentation/payment_screen/binding/payment_binding.dart';
import 'package:m_booking/presentation/my_ticket_screen/my_ticket_screen.dart';
import 'package:m_booking/presentation/my_ticket_screen/binding/my_ticket_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signInSignUpScreen = '/sign_in_sign_up_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String comfirmOtpScreen = '/comfirm_otp_screen';

  static const String enterUsernameScreen = '/enter_username_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String movieDetailScreen = '/movie_detail_screen';

  static const String selectSeatScreen = '/select_seat_screen';

  static const String paymentScreen = '/payment_screen';

  static const String myTicketScreen = '/my_ticket_screen';

  static const String nowPlayingPage = '/now_playing_page';

  static const String comingSoonPage = '/coming_soon_page';

  static const String comingSoonTabContainerPage =
      '/coming_soon_tab_container_page';

  static const String ticketPage = '/ticket_page';

  static const String profileUserPage = '/profile_user_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signInSignUpScreen,
      page: () => SignInSignUpScreen(),
      bindings: [
        SignInSignUpBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: comfirmOtpScreen,
      page: () => ComfirmOtpScreen(),
      bindings: [
        ComfirmOtpBinding(),
      ],
    ),
    GetPage(
      name: enterUsernameScreen,
      page: () => EnterUsernameScreen(),
      bindings: [
        EnterUsernameBinding(),
      ],
    ),
    GetPage(
      name: homePageContainerScreen,
      page: () => HomePageContainerScreen(),
      bindings: [
        HomePageContainerBinding(),
      ],
    ),
    GetPage(
      name: movieDetailScreen,
      page: () => MovieDetailScreen(),
      bindings: [
        MovieDetailBinding(),
      ],
    ),
    GetPage(
      name: selectSeatScreen,
      page: () => SelectSeatScreen(),
      bindings: [
        SelectSeatBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: myTicketScreen,
      page: () => MyTicketScreen(),
      bindings: [
        MyTicketBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => MyTicketScreen(),
      bindings: [
        MyTicketBinding(),
      ],
    )
  ];
}
