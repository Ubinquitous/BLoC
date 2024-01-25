import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc/counter/application/counter_event.dart';
import 'package:practice_bloc/counter/application/counter_state.dart';
import 'package:practice_bloc/counter/repository/counter_repository.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // final CounterRepository _repository = CounterRepository.instance;

  CounterBloc() : super(const CounterInitState()) {
    on<CounterIncreaseEvent>(_increaseEvent);
    on<CounterDecreaseEvent>(_decreaseEvent);
    on<CounterResetCountEvent>(_resetEvent);
  }

  void _increaseEvent(
      CounterIncreaseEvent event, Emitter<CounterState> emit) async {
    emit(CounterIncreaseState(count: state.count + 1));
  }

  void _decreaseEvent(
      CounterDecreaseEvent event, Emitter<CounterState> emit) async {
    emit(CounterDecreaseState(count: state.count - 1));
  }

  void _resetEvent(
      CounterResetCountEvent event, Emitter<CounterState> emit) async {
    emit(const CounterResetState(count: 0));
  }
}
