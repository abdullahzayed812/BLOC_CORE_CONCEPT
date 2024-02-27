import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_bloc_core_concepts/bloc/counter_event.dart";
import "package:flutter_bloc_core_concepts/bloc/counter_state.dart";

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;

  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is CounterIncrementEvent) {
        count += 1;

        emit(CounterValueChangedState(count: count));
      } else if (event is CounterDecrementEvent) {
        count -= 1;

        emit(CounterValueChangedState(count: count));
      } else {
        count = 0;

        emit(CounterValueChangedState(count: count));
      }
    });
  }
}
