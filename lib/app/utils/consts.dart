

import 'package:url_launcher/url_launcher.dart';

const String kBaseUrl = "alooturkey.com";
const String kBaseVersion = 'api/';

// end points
const String kSignIn = 'login';
const String kDelete = 'user/profile/delete';
const String kFetchUser = 'user/profile/fetch';
const String kGetCourses = 'courses/fetch';
const String kGetServices = 'services/fetch';
const String kGetLessons = 'courses/lessons';
const String kUpdateUser = 'user/profile/update';
const String kGetSetting = 'general/settings';
const String kResendOtp = 'user/auth/otp/resend';
const String kResetPassword = "user/auth/password/new";

const String kAlertDialogue= 'انت مش مسجل حساب , عايز تسجل ؟';
const String kAlertCancelButtonText= 'انت مش مسجل حساب , عايز تسجل ؟';
const String kAlertOkButtonText= 'انت مش مسجل حساب , عايز تسجل ؟';

//Static Headers
 Map<String, String> apiHeaders = {
  "Content-Type": "application/json",
  "Accept": "application/json, text/plain, */*",
  "X-Requested-With": "XMLHttpRequest",
};

 // Stripe keys

Future<void> urlLaunch({required String url}) async {
 if (!await launchUrl(Uri.parse(url),mode: LaunchMode.externalApplication)) {
  throw Exception('Could not launch $url');
 }
}

