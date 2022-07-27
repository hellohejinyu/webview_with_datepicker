import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const WebView(
        initialUrl: 'https://so.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return Container(
                color: Colors.white,
                height: 300,
                child: CupertinoDatePicker(
                  use24hFormat: true,
                  onDateTimeChanged: (_) {
                    //
                  },
                ),
              );
            },
          );
        },
        tooltip: 'Open DatePicker',
        child: const Icon(Icons.calendar_today),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
