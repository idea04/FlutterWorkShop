import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class BuildPhotoView extends StatefulWidget {
  final String imgFile;
  const BuildPhotoView({
    Key key,
    @required this.context,
    this.imgFile,
  }) : super(key: key);

  final BuildContext context;

  @override
  _BuildPhotoViewState createState() => _BuildPhotoViewState();
}

class _BuildPhotoViewState extends State<BuildPhotoView> {
  @override
  Widget build(BuildContext context) {
    PaintingBinding.instance.imageCache.clear();
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        color: Colors.white70,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .5,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: PhotoView(
            initialScale: PhotoViewComputedScale.contained,
            imageProvider: NetworkImage(
              widget.imgFile,
            ),
          ),
        ),
      ),
    );
  }
}
