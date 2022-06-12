import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_wallpaper/view_screen/home_controller.dart';

import 'full_image_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wallpaper App'),
          centerTitle: true,
        ),
        body: controller.obx(
          (state) {
            return GridView.extent(
              primary: false,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              maxCrossAxisExtent: 200.0,
              children: List.generate(
                state?.length ?? 0,
                (index) {
                  final item = state![index];
                  return InkWell(
                    onTap: (){
                      Get.to(FullImagePage(image: item.urls?.full,));},
                    child: Card(
                      elevation: 5.0,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                            imageUrl: "${item.urls?.full}",
                            errorWidget: (context, url, error) => Text("error"),
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
          onLoading: const Center(child: CircularProgressIndicator()),
          onError: (error) => Center(child: Text(error.toString())),
          onEmpty: const Center(child: Text("No Data")),
        ));
  }
}
