import 'package:flutapp_playing_with_widgets/screens/age_calculater.dart';
import 'package:flutapp_playing_with_widgets/screens/flex_screen.dart';
import 'package:flutapp_playing_with_widgets/screens/the_drawer.dart';
import 'package:flutter/material.dart';

// don't forget to fix the flex screen, so i'll get two apps at one app

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.amber,
        primaryColor: Colors.indigo,
        // primaryColorDark: Colors.indigoAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "flex screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toUpperCase()),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: AgeCalculater(),
    );
  }
}
