
openEmail({String email = "", String subject = "", String body = ""}) {
  String encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
    query: encodeQueryParameters(
        <String, String>{'subject': subject, 'body': body}),
  );
  // launchUrl(emailLaunchUri);
}

void launchWebPath(String url, {isInWebView = false}) async {
  // if (await canLaunch(url)) {
  //   await launch(
  //     url,
  //     forceWebView: isInWebView,
  //     enableJavaScript: true,
  //     forceSafariVC: isInWebView,
  //   );
  // } else {
  //   locator<CommonUiService>()
  //       .showSnackBar("Please try again later", snackBarType.error);
  // }
}

// Future pickFile() async {
//   PlatformFile file;
//   var result;
//   try {
//     result = await FilePicker.platform.pickFiles(
//       allowMultiple: false,
//     );
//     file = result?.files?.first;
//     return file;
//   } on Exception catch (e) {
//     print("exception $e");
//     return null;
//   }
// }
