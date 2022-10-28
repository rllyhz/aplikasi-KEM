import 'package:url_launcher/url_launcher.dart';

Future<bool> openUrl(String path) async {
  var parseUrl = Uri.parse(path);
  var result = false;

  if (await canLaunchUrl(parseUrl) && await launchUrl(parseUrl)) {
    result = true;
  }

  return result;
}
