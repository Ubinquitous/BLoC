import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {}

class CounterIncreaseEvent extends CounterEvent {
  @override
  List<Object?> get props => [];
}

class CounterDecreaseEvent extends CounterEvent {
  @override
  List<Object?> get props => [];
}

class CounterResetCountEvent extends CounterEvent {
  @override
  List<Object?> get props => [];
}
