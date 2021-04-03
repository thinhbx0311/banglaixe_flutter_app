import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SaHinhPage extends StatefulWidget {
  @override
  _SaHinhPageState createState() => _SaHinhPageState();
}

class _SaHinhPageState extends State<SaHinhPage> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sa Hình'),
      ),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAsset();
        },
      ),
    );
  }

  _loadHtmlFromAsset() async {
    String fileText = await rootBundle.loadString('assets/htmls/sa_hinh.html');
    _controller.loadUrl(Uri.dataFromString(
      fileText,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    ).toString());
  }
}
