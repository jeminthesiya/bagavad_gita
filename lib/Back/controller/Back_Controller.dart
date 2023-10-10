import 'package:bagavad_gita/Back/model/Back_Model.dart';
import 'package:bagavad_gita/utils/Api_helper.dart';
import 'package:get/get.dart';

class BackController {
  RxList<BackModel> Datalist1 = <BackModel>[].obs;

  Future<void> getapicall1(int index) async {
    Datalist1.value = await Apihelper.helper.back(index);
  }
}
