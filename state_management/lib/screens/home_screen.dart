import 'package:flutter/material.dart';
import 'package:state_management/controllers/count_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  var controller = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Obx(() => Text('Count : ${controller.count}'))),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
                  child: ElevatedButton(
                      onPressed: controller.increment,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Text('Increment'), Icon(Icons.add)],
                      ))),
              Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent)),
                      onPressed: controller.minus,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Text('Minus'), Icon(Icons.remove)],
                      ))),
              Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.greenAccent)),
                      onPressed: controller.reset,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Text('Reset'), Icon(Icons.refresh)],
                      ))),
            ],
          ),
        ));
  }
}
