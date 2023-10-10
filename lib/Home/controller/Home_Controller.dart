import 'package:bagavad_gita/Home/model/Home_Model.dart';
import 'package:bagavad_gita/utils/Api_helper.dart';
import 'package:get/get.dart';

class HomeController {
  RxList<HomeModel> Datalist = <HomeModel>[].obs;

  Future<void> getapicall() async {
    Datalist.value = await Apihelper.helper.getapi();
  }
}
