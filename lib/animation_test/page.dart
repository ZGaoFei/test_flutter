import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class AnimationPage extends Page<AnimationState, Map<String, dynamic>> {
  AnimationPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<AnimationState>(
              adapter: null, slots: <String, Dependent<AnimationState>>{}),
          middleware: <Middleware<AnimationState>>[],
        );
}
