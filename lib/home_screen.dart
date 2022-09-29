import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_task_one/home_screen_controller.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  HomeScreenController colorController = HomeScreenController();
  List<String> numbers = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('all grid tiles'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: numbers.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: ((context, index) {
            return GridTile(
                child: GestureDetector(
              onTap: () {
                colorController.changeStatus(index);
              },
              child: Card(
                shape: const CircleBorder(side: BorderSide.none),
                child: Obx(
                  (() {
                    return colorController.isSelected.isTrue
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black12,
                            ),
                            child: Center(
                              child: Text(
                                numbers[index],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ))
                        : Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.amberAccent),
                            child: Center(
                              child: Text(
                                numbers[index],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ));
                  }),
                ),
              ),
            ));
          }),
        ),
      ),
    );
  }
}
