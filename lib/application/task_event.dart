part of 'task_bloc.dart';

abstract class TaskEvent {}

class OnAddTask extends TaskEvent {

  OnAddTask({required this.task});

  final String task;

}
