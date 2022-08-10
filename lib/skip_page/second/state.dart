import 'package:fish_redux/fish_redux.dart';

class SecondState implements Cloneable<SecondState> {
  String data = "hello world!";

  @override
  SecondState clone() {
    return SecondState();
  }
}

SecondState initState(Map<String, dynamic> args) {
  return SecondState()..data = args["first"];
}
