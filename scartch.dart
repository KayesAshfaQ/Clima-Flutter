import 'dart:io';

void main() {
  task1();
  task2();
  task4();
}

void performTasks() async {
  task1();
  var data = task2();
  data.then((value) => task3(value));
}

void task1() {
  var result = 'task 1 result';
  print('task 1 completed');
}

Future<String> task2() async {
  var result;

  Duration duration = Duration(seconds: 5);
  await Future.delayed(duration, () {
    result = 'task 2 result';
    print('task 2 completed');
  });

  return result;
}

void task3(String data) {
  var result = 'task 3 result';
  print('task 3 completed with $data');
}

void task4() {
  var result = 'task 4 result';
  print('task 4 completed');
}
