import 'package:flutter/material.dart';
import 'package:week6_assignment/core/theme/app_color.dart';
import 'package:week6_assignment/core/widgets/custom_image_viewer.dart';
import 'package:week6_assignment/feature/data/model/popular_model.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie, this.onTap});

  final PopularModel movie;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.lightSurfaceColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColor.lightSurfaceContainerHighColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: CustomImageViewer(imageUrl: movie.posterPath ?? ''),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title ?? '',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.lightOnSurfaceColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 8),
                      Text(
                        "${movie.voteAverage?.toString() ?? '0.0'}/10",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.lightOnSurfaceColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.lightSurfaceColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColor.lightSurfaceContainerHighColor,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        movie.overview ?? '',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              color: AppColor.lightOnSurfaceColor,
              onPressed: onTap,
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
