import 'package:bagavad_gita/Back/view/Back_Screen.dart';
import 'package:bagavad_gita/Home/view/Home_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/back',
          page: () => Back_Screen(),
        ),
      ],
    ),
  );
}
