import 'package:flutter/material.dart';
import 'package:week6_assignment/feature/data/model/popular_model.dart';
import 'package:week6_assignment/feature/presentation/widgets/movie_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.popularModel});
  final PopularModel popularModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🎬 Movies'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            children: [
              const SizedBox(height: 16),
              MovieCard(
                movie: popularModel,
                onTap: () {
                  // Handle movie card tap
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
