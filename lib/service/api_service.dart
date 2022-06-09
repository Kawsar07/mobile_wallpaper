import 'package:dio/dio.dart';

import '../models/wallModels.dart';
class RemoteService {
  Dio _dio = Dio();
  final Dio dio;
  static const String url = "https://api.unsplash.com/photos?per_page=30&client_id=CxIbE8GyVA4qC0_X4UMbG2sdEASOCIe7cdOM8qZlPaA";

  RemoteService(this.dio);

  Future<List<WallModels>> getAllPost() async {
    List<WallModels> data = [];
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      print(response);
      for (var i = 0; i < response.data.length; i++) {
        data.add(WallModels.fromJson(response.data[i]));
      }
    }
    return data;
  }



}
