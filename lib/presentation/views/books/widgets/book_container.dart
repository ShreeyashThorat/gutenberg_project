import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gutenberg_project/core/themes/theme_extention.dart';
import 'package:gutenberg_project/data/models/book_model.dart';
import 'package:gutenberg_project/shared/widgets/loading.dart';
import 'package:url_launcher/url_launcher.dart';

class BookContainer extends StatefulWidget {
  final BookModel book;
  const BookContainer({super.key, required this.book});

  @override
  State<BookContainer> createState() => _BookContainerState();
}

class _BookContainerState extends State<BookContainer> {
  @override
  Widget build(BuildContext context) {
    final book = widget.book;
    return GestureDetector(
      onTap: () async {
        final formats = book.formats;
        final List<String?> preferredUrls = [
          formats?.textHtml,
          formats?.textHtmlCharsetIso88591,
          formats?.textPlain,
          formats?.textPlainCharsetUsAscii,
        ];

        String? selectedUrl = preferredUrls.firstWhere(
          (url) => url != null && url.isNotEmpty,
          orElse: () => null,
        );

        if (selectedUrl != null) {
          String finalUrl = selectedUrl;

          final match = RegExp(r'/(\d+)[^/]*$').firstMatch(selectedUrl);
          final bookId = match?.group(1);

          if (bookId != null) {
            if (selectedUrl.contains('.html')) {
              finalUrl =
                  'https://www.gutenberg.org/cache/epub/$bookId/pg$bookId-images.html';
            } else if (selectedUrl.contains('.txt.utf-8')) {
              finalUrl =
                  'https://www.gutenberg.org/cache/epub/$bookId/pg$bookId.txt';
            }
          }
          final uri = Uri.tryParse(finalUrl);
          if (uri == null) {
            showSnackBar("No viewable version available");
            return;
          }
          log("Launching URL: $finalUrl");

          final success = await launchUrl(uri);
          if (!success) {
            showSnackBar("No viewable version available");
          }
        } else {
          showSnackBar("No viewable version available");
        }
      },

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: 0.75,
              child: CachedNetworkImage(
                imageUrl: book.formats!.imageJpeg!,
                fit: BoxFit.cover,
                placeholder:
                    (context, url) => Loading(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                errorWidget:
                    (context, url, error) => Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.grey.shade200,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "No Preview Available",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color:
                              Theme.of(
                                context,
                              ).extension<GreyShades>()?.medium ??
                              Colors.grey,
                        ),
                      ),
                    ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            book.title!.toUpperCase(),
            maxLines: 2,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            book.authors!.map((author) => author.name).toList().join(","),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color:
                  Theme.of(context).extension<GreyShades>()?.medium ??
                  Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
