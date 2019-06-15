import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      color: Colors.black38,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.amber[600],
            height: MediaQuery.of(context).padding.top +
                MediaQuery.of(context).viewInsets.top,
            alignment: Alignment.center,
            child: Text(
              'Top Padding',
              style: textStyle,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[400],
              alignment: Alignment.center,
              child: Text(
                'Main Content',
                style: textStyle,
              ),
            ),
          ),
          Container(
            color: Colors.amber[600],
            height: MediaQuery.of(context).padding.bottom +
                MediaQuery.of(context).viewInsets.bottom,
            alignment: Alignment.center,
            child: Text(
              'Bottom Padding',
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
