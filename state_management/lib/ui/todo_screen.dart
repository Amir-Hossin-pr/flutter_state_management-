import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/todo_controller.dart';
import '../models/todo.dart';

class TodoScreen extends StatelessWidget {
  static const id = '/Todo_Screen';
  final TodoController todoController = Get.find<TodoController>();

  final TextEditingController textEditingController = TextEditingController();

  TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                // textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: "What do you want to accomplish?",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                style: const TextStyle(
                  fontSize: 25.0,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                autofocus: true,
                controller: textEditingController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: deprecated_member_use
                ElevatedButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Get.back();
                  },
                ),
                // ignore: deprecated_member_use
                ElevatedButton(
                  child: const Text('Add'),
                  onPressed: () {
                    todoController.todos.add(
                      Todo(
                        text: textEditingController.text,
                      ),
                    );
                    Get.back();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
