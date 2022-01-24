part of 'navigator_bloc.dart';

enum CounterNotification {
  Incremented,
  Decremented,
  Stable,
}

class NavigatorState {
  int counter;
  String note;
  NavigatorState({required this.counter, required this.note});
}
