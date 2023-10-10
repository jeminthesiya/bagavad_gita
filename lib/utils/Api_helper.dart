import 'dart:convert';

import 'package:bagavad_gita/Back/model/Back_Model.dart';
import 'package:bagavad_gita/Home/model/Home_Model.dart';
import 'package:http/http.dart' as http;

class Apihelper {
  static final Apihelper helper = Apihelper._();

  Apihelper._();

  Future<List<HomeModel>> getapi() async {
    String link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/?limit=18";
    var responce = await http.get(Uri.parse(link), headers: {
      'X-RapidAPI-Key': '4f83946f48mshca990122bc500f1p19f8b9jsn13c11a386db0',
      'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com',
    });
    List json = jsonDecode(responce.body);
    return json.map((e) => HomeModel.fromJson(e)).toList();
  }

  Future<List<BackModel>> back(int index) async {
    String link =
        "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/$index/verses/";
    var responce = await http.get(Uri.parse(link), headers: {
      'X-RapidAPI-Key': '4f83946f48mshca990122bc500f1p19f8b9jsn13c11a386db0',
      'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com',
    });
    List json = jsonDecode(responce.body);
    return json.map((e) => BackModel.fromJson(e)).toList();
  }
}
