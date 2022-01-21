// ignore_for_file: avoid_print, unused_local_variable

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'Task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = const Duration(seconds: 3);
  String? result;
  await Future.delayed(threeSeconds, () {
    result = 'Task 2 data';
    print('Task 2 complete');
  });
  return result!;
}

void task3(String task2Data) {
  String result = 'Task 3 data';
  print('Task 3 complete. $task2Data');
}
