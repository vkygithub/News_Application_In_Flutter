import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class NewsWebView extends StatefulWidget {
  String url;
  NewsWebView({super.key, required this.url});

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  @override
  Widget build(BuildContext context) {
    // return WebviewScaffold(url: widget.url,appBar: AppBar(
    //   backgroundColor: Colors.green,
    //   title: const Text("NEWS NOW"),
    // ),);


    // initalize webview here!!
    final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse(widget.url));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
          title: Text("NEWS"),
        ),
        body: WebViewWidget(
          controller: controller,
        ),
      )
    );
  }
}
