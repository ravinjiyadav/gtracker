  import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'package:image/image.dart' as IMG;



class Common{


  static Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  static Future<Uint8List> getBytesFromNetwork(String imgUrl) async {
    Uint8List bytes =
    (await NetworkAssetBundle(Uri.parse(imgUrl)).load(imgUrl))
        .buffer
        .asUint8List();
    Uint8List? networkMarkerIcon = resizeNetworkImage(bytes, 90, 90);


    return networkMarkerIcon!;
  }


  static Uint8List? resizeNetworkImage(Uint8List data, width, height) {
    Uint8List? resizedData = data;
    IMG.Image? img = IMG.decodeImage(data);
    IMG.Image resized = IMG.copyResize(img!, width: width, height: height);
    resizedData = Uint8List.fromList(IMG.encodePng(resized));
    return resizedData;
  }

}