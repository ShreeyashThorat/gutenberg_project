import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gutenberg_project/presentation/views/books/bloc/get_books_bloc.dart';
import 'package:gutenberg_project/presentation/views/books/widgets/book_container.dart';
import 'package:gutenberg_project/shared/widgets/app_textfield.dart';

import '../../../core/themes/theme_extention.dart';
import 'widgets/book_loading.dart';

class BooksScreen extends StatefulWidget {
  final String category;
  const BooksScreen({super.key, required this.category});

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  final TextEditingController searchController = TextEditingController();
  GetBooksBloc getBooksBloc = GetBooksBloc();
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(onScroll);
    getBooksBloc.add(GetBooks(category: widget.category));
    super.initState();
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(onScroll)
      ..dispose();
    getBooksBloc.close();
    super.dispose();
  }

  void onScroll() {
    if (isBottom) {
      log("Search Text ${searchController.text.trim().isEmpty.toString()}");
      getBooksBloc.add(
        searchController.text.trim().isEmpty
            ? GetBooks(category: widget.category)
            : GetBooks(query: searchController.text.trim()),
      );
    }
  }

  bool get isBottom {
    if (!scrollController.hasClients) {
      return false;
    } else {
      final maxScroll = scrollController.position.maxScrollExtent;
      final currentScroll = scrollController.offset;
      return currentScroll == maxScroll;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isWide = constraints.maxWidth > 600;
            return Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: isWide ? 20 : size.width * 0.05,
                    ),
                    constraints: BoxConstraints(maxWidth: 1000),
                    child: Column(
                      children: [
                        AppBar(
                          backgroundColor: Colors.white,
                          surfaceTintColor: Colors.transparent,
                          leading: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              size: 30,
                              color: Theme.of(context).primaryColor,
                              Icons.arrow_back_rounded,
                            ),
                          ),
                          title: Text(
                            widget.category,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                        SizedBox(height: 15),
                        AppTextField(
                          filled: true,
                          controller: searchController,
                          hintText: "Search",
                          verticalPadding: 10,
                          onChange: (_) => setState(() {}),
                          preffix: Icon(
                            Icons.search_rounded,
                            size: 25,
                            color:
                                Theme.of(
                                  context,
                                ).extension<GreyShades>()?.medium ??
                                Colors.grey,
                          ),
                          focusedBorder: true,
                          suffix:
                              searchController.text.isNotEmpty
                                  ? IconButton(
                                    onPressed: () {
                                      setState(() {
                                        searchController.clear();
                                      });
                                    },
                                    splashColor: Colors.white,
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      size: 20,
                                      color: Colors.black54,
                                    ),
                                  )
                                  : const SizedBox.shrink(),
                          onSubmit: (value) {
                            if (value.trim() != "") {
                              getBooksBloc.add(
                                GetBooks(loading: true, query: value.trim()),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Expanded(
                  child: Container(
                    width: size.width,
                    color: Theme.of(context).canvasColor,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 1000),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: BlocBuilder<GetBooksBloc, GetBooksState>(
                          bloc: getBooksBloc,
                          builder: (context, state) {
                            if (state is GetBooksInitial ||
                                state is GetBooksLoading) {
                              return GridView.builder(
                                controller: scrollController,
                                padding: EdgeInsets.symmetric(
                                  horizontal: isWide ? 20 : size.width * 0.05,
                                ),
                                itemCount: 20,
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent:
                                          constraints.maxWidth > 300
                                              ? 144
                                              : 200,
                                      crossAxisSpacing:
                                          isWide ? 20 : size.width * 0.04,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 0.5,
                                    ),
                                itemBuilder: (context, index) {
                                  return BookLoading();
                                },
                              );
                            } else if (state is GetBooksLoaded &&
                                state.books.isEmpty) {
                              return Text("No Books Found");
                            } else if (state is ErrorOccuredGetBooks) {
                              return Text(
                                state.exception.message ??
                                    "Something went wrong",
                              );
                            } else if (state is GetBooksLoaded &&
                                state.books.isNotEmpty) {
                              return GridView.builder(
                                controller: scrollController,
                                padding: EdgeInsets.symmetric(
                                  horizontal: isWide ? 20 : size.width * 0.05,
                                ),
                                itemCount:
                                    state.loadMore == true
                                        ? state.books.length
                                        : state.books.length + 1,
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent:
                                          constraints.maxWidth > 300
                                              ? 144
                                              : 200,
                                      crossAxisSpacing:
                                          isWide ? 20 : size.width * 0.04,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 0.5,
                                    ),
                                itemBuilder: (context, index) {
                                  return index >= state.books.length
                                      ? BookLoading()
                                      : BookContainer(book: state.books[index]);
                                },
                              );
                            }
                            return Container();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
