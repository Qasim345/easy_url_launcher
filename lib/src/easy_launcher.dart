import 'package:url_launcher/url_launcher.dart';

/// Author: [Qasim sarwari](https://github.com/Qasim345)
/// [Easy Launcher](https://pub.dev/packages/easy_url_launcher)
/// version: 0.0.1
/// Year: 2024

/// Easy Launcher class for easy url launcher function call and launch url in browser or app with url parameters and launch mode as platform default or platform specific mode for web
/// Default mode is platform default
class EasyLauncher {
  EasyLauncher._();

  /// Call number
  static Future<void> call({required String number}) async {
    await launchUrl(Uri(scheme: 'tel', path: number));
  }

  /// Sends an SMS message
  static Future<void> sms({required String number, String message = ''}) async {
    await launchUrl(Uri.parse("sms:$number?body=$message"));
  }

  /// Opens an email
  static Future<void> email(
      {required String email, String subject = '', String body = ''}) async {
    await launchUrl(Uri.parse("mailto:$email?subject=$subject&body=$body"));
  }

  /// Opens a URL
  static Future<void> url(
      {required String url,
      LaunchMode mode = LaunchMode.platformDefault}) async {
    await launchUrl(Uri.parse(url), mode: mode);
  }
}
