import 'dart:async';
import 'package:bloc/bloc.dart';
import './counter.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState {
    return UpdateCounterState(0);
  }

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is IncrementCounter) {
      yield* _mapUpdateCountertoState(event);
    }
  }

  Stream<CounterState> _mapUpdateCountertoState(IncrementCounter event) async* {
    final int counter = event.counter + 1;
    yield UpdateCounterState(counter);
  }
}
