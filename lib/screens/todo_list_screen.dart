import 'package:flutter/material.dart';
import 'package:todo_app/constants/constants.dart';
import 'package:todo_app/screens/todo_list_screen.dart';

class TodoListScreen extends StatelessWidget {
  TodoListScreen({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'ToDo List',
          style: Constants.headingStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 30,
              width: 40,
              decoration: Constants.addButtonDecoration,
              child: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                            padding: const EdgeInsets.only(top: 20),
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
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
                                  ),
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
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          primary: Colors.purple.shade400,
                                        ),
                                        child: const Text('Save')),
                                  ),
                                ],
                              ),
                            ),
                          ));

                  // scaffoldKey.currentState!.showModalBottomSheet((context) =>
                  //     Container(
                  //       padding: const EdgeInsets.only(top: 10),
                  //       height: double.infinity,
                  //       width: double.infinity,
                  //       decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //       child: Column(
                  //         children: [
                  //           const Text(
                  //             'Add a New Task',
                  //             style: TextStyle(
                  //               color: Colors.black,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 30,
                  //             ),
                  //           ),
                  //           const SizedBox(
                  //             height: 20,
                  //           ),
                  //           Padding(
                  //             padding:
                  //                 const EdgeInsets.symmetric(horizontal: 15),
                  //             child: TextField(
                  //               decoration: InputDecoration(
                  //                 fillColor: Colors.grey.shade200,
                  //                 filled: true,
                  //                 hintText: 'Enter Your Task',
                  //                 contentPadding: const EdgeInsets.symmetric(
                  //                     vertical: 20.0, horizontal: 20.0),
                  //                 border: const OutlineInputBorder(
                  //                   borderRadius:
                  //                       BorderRadius.all(Radius.circular(10.0)),
                  //                 ),
                  //                 enabledBorder: OutlineInputBorder(
                  //                   borderSide: BorderSide(
                  //                     color: Colors.grey.shade100,
                  //                   ),
                  //                   borderRadius: const BorderRadius.all(
                  //                       Radius.circular(10.0)),
                  //                 ),
                  //                 focusedBorder: OutlineInputBorder(
                  //                   borderSide: BorderSide(
                  //                     color: Colors.grey.shade100,
                  //                   ),
                  //                   borderRadius: const BorderRadius.all(
                  //                       Radius.circular(10.0)),
                  //                 ),
                  //               ),
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //     ));
                },
                icon: const Icon(
                  Icons.add,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PriorityButton extends StatelessWidget {
  const PriorityButton({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(title));
  }
}
