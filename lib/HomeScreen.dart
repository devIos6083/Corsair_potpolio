import 'package:flutter/material.dart';
import 'webview_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Potfolio App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebviewScreen(
                      url: "https://github.com/devIos6083?tab=repositories",
                      title: "GitHub",
                    ),
                  ),
                );
              },
              child: Text("GitHub"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebviewScreen(
                      url: "https://velog.io/@corsair/posts",
                      title: "Velog",
                    ),
                  ),
                );
              },
              child: Text("Velog"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebviewScreen(
                      url: "https://www.notion.so/10bae4946a4a80b6bcc4d8a43b0c24d2",
                      title: "Notion",
                    ),
                  ),
                );
              },
              child: Text("Notion"),
            ),
          ],
        ),
      ),
    );
  }
}
