import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {

  // url for web
  final String url;
  const WebViewScreen(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          padding: const EdgeInsets.only(left: 30),
          icon: const Icon(IconlyLight.arrowLeft2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: WebView(
          initialUrl: url,
        ),
      ),
    );
  }
}
