part of 'task_bloc.dart';

class TaskState {
  TaskState({required this.task});

  final String task;

  factory TaskState.initial() {
    return TaskState(task: '');
  }

  TaskState copyWith(String? task) {
    return TaskState(task: task ?? this.task);
  }
}
