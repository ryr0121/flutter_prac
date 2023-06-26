import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://github.com/ryr0121');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('CHONI\'s Github'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                controller.loadRequest(homeUrl);
              },
              icon: Icon(Icons.home)
          )
        ],
      ),
      body: WebViewWidget(
        controller: this.controller,
      )
      // WebView(
      //   onWebViewCreated: (WebViewController controller) {
      //     this.controller = controller;
      //   },
      //   initialUrl: homeUrl,
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}