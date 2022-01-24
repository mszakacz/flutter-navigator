import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigator_event.dart';
part 'navigator_state.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavigatorState> {
  NavigatorBloc()
      : super(NavigatorState(
            counter: 0, note: CounterNotification.Stable.toString())) {
    on<CounterIncrement>((event, emit) {
      emit(NavigatorState(
          counter: state.counter + 1,
          note: CounterNotification.Incremented.toString()));
    });

    on<CounterDecrement>((event, emit) {
      emit(NavigatorState(
          counter: state.counter - 1,
          note: CounterNotification.Decremented.toString()));
    });
  }
}
