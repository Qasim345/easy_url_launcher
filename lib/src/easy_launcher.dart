import 'package:url_launcher/url_launcher.dart';

/// Author: [Qasim Sarwari](https://github.com/Qasim345)
/// [Easy Launcher](https://pub.dev/packages/easy_url_launcher)
/// version: 0.0.7
/// Year: 2024

/// Easy Launcher class for easy url launcher function call and launch url in browser or app with url parameters and launch mode as platform default or platform specific mode for web
/// Default mode is platform default

/// enum for mode
enum Mode {
  platformDefault,
  inAppBrowser,
  inAppWeb,
  externalApp,
  appNoneBrowser
}

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

  /// Open Google map
  static Future<void> openMap(
      {required String lati, required String long}) async {
    await launchUrl(
        Uri.parse("https://www.google.com/maps/@$lati,$long,10z?entry=ttu"),
        mode: LaunchMode.externalApplication);
  }

  /// Send message to whatsapp
  /// Please provide a phone number with country code. Example: +93777777777
  static Future<void> sendToWhatsApp(
      {required String phone, String? message}) async {
    await launchUrl(Uri.parse("https://wa.me/$phone?text=$message"),
        mode: LaunchMode.externalApplication);
  }

  /// Opens a URL
  static Future<void> url(
      {required String url, Mode mode = Mode.platformDefault}) async {
    switch (mode) {
      case Mode.platformDefault:
        await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault);
        break;
      case Mode.inAppBrowser:
        await launchUrl(Uri.parse(url), mode: LaunchMode.inAppBrowserView);
        break;
      case Mode.inAppWeb:
        await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
        break;
      case Mode.externalApp:
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
        break;
      case Mode.appNoneBrowser:
        await launchUrl(Uri.parse(url),
            mode: LaunchMode.externalNonBrowserApplication);
        break;
      default:
        await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault);
    }
  }
}
