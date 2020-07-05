import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class BuildChartDetial extends StatelessWidget {
  final String imgFile;
  const BuildChartDetial({
    Key key,
    @required this.context,
    this.imgFile,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    print('https://api.pro45.com/$imgFile');
    PaintingBinding.instance.imageCache.clear();
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .5,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: PhotoView(
            initialScale: PhotoViewComputedScale.contained,
            imageProvider: NetworkImage(
              'https://api.pro45.com/$imgFile',
            ),
          ),
        ),
      ),
    );
  }
}
