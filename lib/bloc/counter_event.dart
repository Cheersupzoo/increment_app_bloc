import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class CounterEvent extends Equatable {
  CounterEvent([List props = const []]) : super(props);
}

class IncrementCounter extends CounterEvent {
  final int counter;
  
  IncrementCounter(this.counter) : super([counter]);

  @override
  String toString() => 'IncrementCounter {counter : $counter}';
}