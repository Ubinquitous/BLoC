import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  final bool isLoaded;
  final int count;
  const CounterState({this.isLoaded = true, this.count = 0});
}

class CounterInitState extends CounterState {
  const CounterInitState();
  @override
  List<Object?> get props => [];
}

class CounterLoadingState extends CounterState {
  const CounterLoadingState({super.isLoaded});

  @override
  List<Object?> get props => [isLoaded];
}

class CounterLoadedState extends CounterState {
  const CounterLoadedState({super.isLoaded});

  @override
  List<Object?> get props => [isLoaded];
}

class CounterIncreaseState extends CounterState {
  const CounterIncreaseState({super.count});

  @override
  List<Object?> get props => [count];
}

class CounterDecreaseState extends CounterState {
  const CounterDecreaseState({super.count});

  @override
  List<Object?> get props => [count];
}

class CounterResetState extends CounterState {
  const CounterResetState({super.count});

  @override
  List<Object?> get props => [count];
}
