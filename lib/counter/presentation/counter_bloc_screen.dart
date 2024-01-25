import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:practice_bloc/counter/application/counter_bloc.dart';
import 'package:practice_bloc/counter/application/counter_event.dart';
import 'package:practice_bloc/counter/application/counter_state.dart';

class CounterBlocScreen extends StatelessWidget {
  const CounterBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => CounterBloc(),
          )
        ],
        child: BlocListener<CounterBloc, CounterState>(
          listener: (context, state) {},
          child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  "asdnkasnklsancklasncl",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              body: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _ViewCounterWidget(),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _IncreaseWidget(),
                            const SizedBox(width: 10),
                            _DecreaseWidget(),
                          ],
                        ),
                      ]))),
        ));
  }
}

class _IncreaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            HapticFeedback.mediumImpact();
            context.read<CounterBloc>().add(CounterIncreaseEvent());
          },
          child: const Icon(Icons.plus_one, size: 42, color: Colors.blue),
        );
      },
    );
  }
}

class _DecreaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            HapticFeedback.mediumImpact();
            context.read<CounterBloc>().add(CounterDecreaseEvent());
          },
          child:
              const Icon(Icons.exposure_minus_1, size: 42, color: Colors.blue),
        );
      },
    );
  }
}

class _ViewCounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Text("${state.count}",
            style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w800,
                color: Colors.black));
      },
    );
  }
}
