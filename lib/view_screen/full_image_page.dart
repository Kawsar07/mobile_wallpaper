import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';

class FullImagePage extends StatefulWidget {
  FullImagePage({Key? key, this.image}) : super(key: key);
  var image;
  @override
  State<FullImagePage> createState() => _FullImagePageState();
}

class _FullImagePageState extends State<FullImagePage> {
  Future<void> setWallpaper() async {
    try {
      String url = widget.image;
      int location = WallpaperManager
          .BOTH_SCREEN;
      var file = await DefaultCacheManager().getSingleFile(url);
      final bool result =
          await WallpaperManager.setWallpaperFromFile(file.path, location);
      print(result);
    } on PlatformException {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: CachedNetworkImage(
              imageUrl: widget.image,
              fit: BoxFit.fitHeight,
              errorWidget: (context, url, error) => Text("error"),
            ),
          ),
          InkWell(
            onTap: () {
              setWallpaper();
            },
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.orange,
              child: const Center(
                child: Text('Set Wallpaper',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          )
        ],
      )),
    );
  }
}
