import 'package:fish_redux/fish_redux.dart';

class EntranceState implements Cloneable<EntranceState> {
  String clickData = "hello world!11";

  @override
  EntranceState clone() {
    return EntranceState()..clickData = clickData;
  }
}

EntranceState initState(Map<String, dynamic> args) {
  print("state init ${args["first_value"]}");
  return EntranceState()..clickData = args["first_value"];
}
