import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gutenberg_project/data/models/book_model.dart';
import 'package:gutenberg_project/data/sources/api_service.dart';

import '../../core/exceptions/app_exception.dart';

class BooksRepository {
  final Api api = Api();

  Future<List<BookModel>> getBooks(
    int page, {
    String topic = "",
    String query = "",
  }) async {
    try {
      Response response = await api.sendRequest.get(
        "/books/?page=$page${query != "" ? "&search=$query" : ""}&topic=$topic",
      );

      if (response.statusCode == 200) {
        if (response.data['results'] != null &&
            response.data['results'] != []) {
          return (response.data['results'] as List<dynamic>)
              .map((json) => BookModel.fromJson(json))
              .toList();
        } else if (page > 1) {
          return [];
        } else {
          NotFoundException();
        }
      } else if (page > 1) {
        return [];
      } else {
        AppExceptionHandler.throwException(null, response.statusCode);
      }
    } on DioException catch (e) {
      if (page > 1) {
        return [];
      } else {
        AppExceptionHandler.throwException(e);
      }
    } catch (e) {
      log(e.toString());
      if (page > 1) {
        return [];
      } else {
        AppExceptionHandler.throwException(e);
      }
    }

    throw AppException();
  }
}
