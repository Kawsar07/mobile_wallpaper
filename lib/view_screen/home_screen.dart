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
              children: List.generate(state?.length ?? 0, (index){
                final item = state![index];
                return SingleChildScrollView(
                  child:
                  InkWell(
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
                      if (index==17) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==18) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==19) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==20) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==21) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==22) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==23) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==24) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==25) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==26) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==27) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==28) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==29) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                      if (index==30) {
                        Get.to(FullImagePage(image: item.urls?.full,));
                      }
                    },
                    child: Card(
                      elevation: 5.0,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl: "${item.urls?.full}",
                            errorWidget: (context, url, error) => Text("error"),
                            placeholder: (context, url) => CircularProgressIndicator(
                            ),
                          ),
                        ],
                      ),
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
