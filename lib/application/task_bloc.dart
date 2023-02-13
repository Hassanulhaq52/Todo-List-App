import 'package:bloc/bloc.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState.initial()) {
    on<OnAddTask>((event, emit) {
      emit(state.copyWith(event.task));
    });
  }
}
