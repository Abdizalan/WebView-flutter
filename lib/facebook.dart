import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const PROJ());
}

class PROJ extends StatelessWidget {
  const PROJ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Facebook(),
    );
  }
}

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  _FacebookPageState createState() => _FacebookPageState();
}

class _FacebookPageState extends State<Facebook> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    // Initialize WebViewController with the Facebook URL
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.facebook.com'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            const Text(
              'Logn Facebook',
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

