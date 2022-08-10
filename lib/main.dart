import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Page;
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
    final AbstractRoutes routes = PageRoutes(pages: <String, Page<Object, dynamic>>{
      "fish_redux_test": EntrancePage(),
      "first_page": FirstPage(),
      "second_page": SecondPage(),
      "list_page": ListPage(),
      "image_test_page": ImagePage(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            GestureDetector(
              onTap: () {
                Map<String, dynamic> arg = {};
                arg["first_value"] = "first page data";
                Navigator.of(context).pushNamed("fish_redux_test", arguments: arg);
                // Navigator.of(context).pushNamed("fish_redux_test");
              },
              child: const Text(
                "fish redux test",
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("first_page");
              },
              child: const Text(
                "传值和回传值",
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("list_page");
              },
              child: const Text(
                "list",
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("image_test_page");
              },
              child: const Text(
                "image test",
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
