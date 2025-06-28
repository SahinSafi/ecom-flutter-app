import 'package:flutter/material.dart';

class ImageLoader extends StatelessWidget {

  final String url;
  final double? height;
  final double? width;
  final double borderRadius;
  final BoxFit fit;

  const ImageLoader({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.borderRadius = 0.0,
    this.fit = BoxFit.none,
  });

  ImageLoader copyWith({
    String? url,
    double? height,
    double? width,
    double? borderRadius,
    BoxFit? fit,
  }) {
    return ImageLoader(
      url: url ?? this.url,
      height: height ?? this.height,
      width: width ?? this.width,
      borderRadius: borderRadius ?? this.borderRadius,
      fit: fit ?? this.fit,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(url,
        errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
          return Image(image: AssetImage("assets/icon_image_error.png"), height: height, width: width,);
        },
        fit: fit, height: height, width: width,),
    );
  }

}




