class CounterRepository {
  static final CounterRepository instance = CounterRepository._internal();

  factory CounterRepository() => instance;
  CounterRepository._internal();
}
