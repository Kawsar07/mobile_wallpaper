import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullImagePage extends StatefulWidget {
  FullImagePage({Key? key, this.image}) : super(key: key);
  var image;

  @override
  State<FullImagePage> createState() => _FullImagePageState();
}

class _FullImagePageState extends State<FullImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CachedNetworkImage(
          imageUrl: widget.image,
          errorWidget: (context, url, error) => Text("error"),

          // placeholder: (context, url) => CircularProgressIndicator(
          //
          // ),
        ),

        // Image.network(widget.image),
      ),
    );
  }
}
