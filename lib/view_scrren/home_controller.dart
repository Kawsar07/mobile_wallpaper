import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../models/wallModels.dart';
import '../service/api_service.dart';

class HomeController extends GetxController with StateMixin<List<WallModels>> {

  final Dio _dio = Dio();
  final RemoteService _remoteService = RemoteService (Dio());

  var addDataDoc = <String, dynamic>{};
  List<WallModels> dataList = <WallModels>[];

  @override
  void onInit() {
    getData();
    super.onInit();
  }
  Future<void> getData() async {
    change(null, status: RxStatus.loading());
    try {
      final res = await _remoteService.getAllPost();
      change(res, status: RxStatus.success());
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }

}

