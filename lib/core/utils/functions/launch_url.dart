import 'package:booly_app/core/utils/functions/custom_snack_bar.dart';

import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    final Uri _url = Uri.parse(url);
    if (await canLaunchUrl(_url)) {
      !await launchUrl(_url);
    } else {
      customSnackBar(context, 'Cannot launch $url');
    }
  }
}
