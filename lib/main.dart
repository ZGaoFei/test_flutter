import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:flutter/scheduler.dart';
import 'package:test_flutter/animation_test/page.dart';
import 'package:test_flutter/image_test/image_page/page.dart';
import 'package:test_flutter/list/page.dart';
import 'package:test_flutter/main/page.dart';
import 'package:test_flutter/skip_page/first/page.dart';
import 'package:test_flutter/skip_page/second/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AbstractRoutes routes =
        PageRoutes(pages: <String, Page<Object, dynamic>>{
      "fish_redux_test": EntrancePage(),
      "first_page": FirstPage(),
      "second_page": SecondPage(),
      "list_page": ListPage(),
      "image_test_page": ImagePage(),
      "hero_animation": AnimationPage(),
    });

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page2'),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          print("=========");
          print(settings.arguments);
          print("=========");
          return routes.buildPage(settings.name, settings.arguments);
        });
      },
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
    Map<String, dynamic> arg = {};
    arg["first_value"] = "first page data";

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          _createBt("fish_redux_test", "fish redux test", arg: arg),

          _createBt("first_page", "传值和回传值"),

          _createBt("list_page", "list"),

          _createBt("image_test_page", "image test"),

          _createBt("hero_animation", "hero animation test"),
        ],
      ),
    );
  }

  Widget _createBt(String pageName, String title, {Object? arg}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(pageName, arguments: arg);
      },
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
