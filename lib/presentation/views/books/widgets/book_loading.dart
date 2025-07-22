import 'package:flutter/material.dart';

import '../../../../shared/widgets/loading.dart';

class BookLoading extends StatelessWidget {
  const BookLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: AspectRatio(
            aspectRatio: 0.75,
            child: Loading(width: double.infinity, height: double.infinity),
          ),
        ),
        const SizedBox(height: 8),
        Loading(height: 20, width: double.infinity),
        SizedBox(height: 4),
        Loading(height: 15, width: double.infinity - 10),
      ],
    );
  }
}
