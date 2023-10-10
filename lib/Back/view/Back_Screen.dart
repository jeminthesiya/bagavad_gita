import 'package:bagavad_gita/Back/controller/Back_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Back_Screen extends StatefulWidget {
  const Back_Screen({super.key});

  @override
  State<Back_Screen> createState() => _Back_ScreenState();
}

class _Back_ScreenState extends State<Back_Screen> {
  BackController backController = Get.put(
    BackController(),
  );

  @override
  void initState() {
    super.initState();
    var index = Get.arguments;
    backController.getapicall1(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: ListTile(
                    leading: Text(
                      "${backController.Datalist1[index].id}",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Text(
                      "${backController.Datalist1[index].transliteration}",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: backController.Datalist1.length,
          ),
        ),
      ),
    );
  }
}
