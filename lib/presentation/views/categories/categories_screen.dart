import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gutenberg_project/core/constants/constant_data.dart';
import 'package:gutenberg_project/core/constants/constant_images.dart';
import 'package:gutenberg_project/presentation/views/books/books_screen.dart';
import 'package:gutenberg_project/shared/animations/page_transitions.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 600;
          return Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: ListView(
              children: [
                SizedBox(
                  width: size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: SvgPicture.asset(
                          ConstantImages.topoSVG,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: 20,
                        ),

                        width: size.width,
                        constraints: BoxConstraints(maxWidth: 1000),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gutenberg Project",
                              style: Theme.of(
                                context,
                              ).textTheme.headlineLarge?.copyWith(
                                overflow: TextOverflow.visible,
                                height: 1,
                              ),
                              softWrap: true,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "A social cataloging website that allows you to freely search its database of books, annotations, and reviews.",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(
                                overflow: TextOverflow.visible,
                                fontWeight: FontWeight.w600,
                              ),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: 20,
                    ),
                    margin: EdgeInsets.only(top: 15),
                    constraints: BoxConstraints(maxWidth: 1000),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: isWide ? 2 : 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 7,
                      children: List.generate(ConstantData.categories.length, (
                        index,
                      ) {
                        final category = ConstantData.categories[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              SlideTransitionToRight(
                                BooksScreen(category: category.name),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(211, 209, 238, 0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  category.icon,
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    category.name.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Icon(
                                  size: 25,
                                  Icons.arrow_forward_rounded,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
