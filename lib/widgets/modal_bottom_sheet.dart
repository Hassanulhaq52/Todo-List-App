import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/application/task_bloc.dart';
import 'package:todo_app/constants/constants.dart';
import 'package:todo_app/screens/todo_list_screen.dart';
import 'package:todo_app/widgets/priority_button.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        final TaskBloc taskBloc = context.read<TaskBloc>();
        return Container(
          padding: const EdgeInsets.only(top: 20),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add a New Task',
                  style: Constants.headingStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: Constants.taskFieldDecoration,
                  onChanged: (value) {
                    taskBloc.add(OnAddTask(task: value));
                  },
                ),
                // Text('${state.task}'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Priority',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    PriorityButton(title: 'High'),
                    SizedBox(
                      width: 8,
                    ),
                    PriorityButton(title: 'Normal'),
                    SizedBox(
                      width: 8,
                    ),
                    PriorityButton(title: 'Low'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {
                        if (state.task != null && state.task != '') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TodoListScreen(),
                              ));
                        } else {
                          print('error');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.purple.shade400,
                      ),
                      child: const Text('Save')),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
