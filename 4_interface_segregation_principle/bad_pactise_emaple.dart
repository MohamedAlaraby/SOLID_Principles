abstract class Worker {
  void work();
  void sleep();
}

class Human implements Worker {
  @override
  void sleep() => print('I need 10hours per night');

  @override
  void work() => print('I do a lot of work');
}

class Robot implements Worker {
  @override
  void sleep() => print('no need to sleep '); //?? we don't need this

  @override
  void work() => print(' I always work');
}
