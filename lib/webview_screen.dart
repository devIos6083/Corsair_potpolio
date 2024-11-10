import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatelessWidget {
  final String url;
  final String title;

  WebviewScreen({required this.url,required this.title});



  @override
  Widget build(BuildContext context) {
    final WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: WebViewWidget(
          controller: controller,
      ),
    );
  }
}


