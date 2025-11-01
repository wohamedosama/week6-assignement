import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:week6_assignment/core/theme/app_color.dart';

class CustomImageViewer extends StatelessWidget {
  const CustomImageViewer({super.key, required this.imageUrl, this.fit});
  final String imageUrl;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: 'https://image.tmdb.org/t/p/original/${imageUrl}',
      fit: fit ?? BoxFit.cover,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: imageProvider,
              fit: fit ?? BoxFit.cover,
            ),
          ),
        );
      },
      placeholder: (context, url) => Container(),
      errorWidget: (context, url, error) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.lightSurfaceContainerHighColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Icon(Icons.image, size: 60)),
      ),
    );
  }
}
