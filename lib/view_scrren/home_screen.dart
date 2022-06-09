import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_wallpaper/view_scrren/car_page.dart';
import 'package:mobile_wallpaper/view_scrren/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        appBar: AppBar(
          title: Text('Api Get'),
          centerTitle: true,
        ),
        body: controller.obx(
              (state) {
                // leading:  fit: BoxFit.fill,),
                // subtitle: Text("${item.height}"),
            return ListView(
              children: List.generate(state?.length ?? 0, (index) {
                final item = state![index];
                return InkWell(
                  onTap: (){
                    if (index==0) {
                     Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==1) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==3) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==4) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==5) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==6) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==7) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==8) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==9) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==10) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==11) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==12) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==13) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==14) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==15) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }
                    if (index==16) {
                      Get.to(FullImagePage(image: item.urls?.full,));
                    }

                  },
                  child: Card(
                    child:CachedNetworkImage(
                      imageUrl: "${item.urls?.full}",
                      errorWidget: (context, url, error) => Text("error"),
                      placeholder: (context, url) => CircularProgressIndicator(

                      ),
                    ),
                    // child: Image.network("${item.urls?.full}",),
                  ),
                );



              }),
            );
          },
          onLoading: const Center(child: CircularProgressIndicator()),
          onError: (error) => Center(child: Text(error.toString())),
          onEmpty: const Center(child: Text("No Data")),

        )
    );
  }
}
