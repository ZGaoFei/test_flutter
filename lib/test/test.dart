import 'dart:developer';
import 'dart:isolate';
import 'dart:math';

import 'package:flutter/material.dart';

int? a;
int b = 0;
int _c = 1;
String _str = "hello world";
String? str;
late String string;
const int d = 0;
const String e = "";
final TestOne one = TestOne();

Future<void> testOne(BuildContext context) async {
  Map<int, String> map = {1: "hello world"};

  Future push = Navigator.of(context)
      .pushNamed<Map<int, String>>("routeName", arguments: {1: "hello world"});
  push.then((value) => {});

  Map future = await Navigator.of(context)
      .pushNamed("route", arguments: {2: "ni hao"}) as Map;
  Navigator.of(context).pop({3: "你好"});

  Navigator.of(context).pop(["", ""]);
}

testTwo() async {
  ReceivePort receivePort = ReceivePort();
  receivePort.listen((message) {});

  await Isolate.spawn(testThree, receivePort.sendPort);
}

testThree(SendPort sendPort) async {
  sendPort.send("message");
}

testFour() {
  print("object");

  debugPrint("");
}

_testFive() {
  string = "hello world";
  List<int> list = [];
  list.forEach((element) {});
  list.forEach(printIndex);
}

void testSix({int a = 0, String b = "", required int c}) {

}

testSeven([int a = 0, String b = ""]) {

}

testNine(int a, String b) {

}

testTen(int a, {String b = "", int c = 0}) {

}

testEight() {
  testSix(c: 1, a: 2);
  testSix(c: 2, b: "hello world");

  testSeven();
  testSeven(1);
  testSeven(1, "hello world");

  testNine(1, "hello world");
}

testB(Function f) {
  print("test B");
  f();
}

testC() {
  print("hello world");
}

testD(int a, int b) {
  print("a: $a, b: $b");
}

testA() {
  //testB(() => print("hello world"));

  //var fun = testC();
  //testB(fun);

  //testB(testD(1, 2));

  testB(print);
}

void main() {
  const list = ['apples', 'bananas', 'oranges'];
  // list.forEach(p);
  // list.forEach(q);

  testA();
}

void printList(String str) {
  print(str);
}

var p = (str) => print(str);

var q = (str) {
  print(str);
  print(str);
};

void printIndex(int index) {
  print(index);
}

class TestOne {
  static const String string = "";
}

mixin TestOne1 {
  void a() {

  }

  void _b() {

  }
}

class TestOne2 with TestOne1 {

  void a() {
    super.a();
  }


}
