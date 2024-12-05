import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    // Initialize WebViewController with Twitter URL
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.twitter.com'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            const Text(
              'Logn Twitter',
              style: TextStyle(fontSize: 20.0),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '3');
              },
              child: Image.asset(
                'assets/Twitter.png',
                fit: BoxFit.contain,
                height: 30.0,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported),
              ),
            ),
            const SizedBox(width: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '4');
              },
              child: Image.asset(
                'assets/face.png',
                fit: BoxFit.contain,
                height: 40.0,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported),
              ),
            ),
          ],
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
