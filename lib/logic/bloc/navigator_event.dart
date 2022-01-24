part of 'navigator_bloc.dart';

@immutable
abstract class NavigatorEvent {}

class CounterIncrement extends NavigatorEvent {}

class CounterDecrement extends NavigatorEvent {}
