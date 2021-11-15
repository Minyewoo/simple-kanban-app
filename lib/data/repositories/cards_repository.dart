import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:kanban/data/models/kanban_card.dart';
import 'package:kanban/data/models/token.dart';
import 'package:kanban/data/repositories/result/failure.dart';
import 'package:kanban/data/repositories/result/result.dart';

abstract class CardsRepository {
  Future<AbstractResult> getCards(Token authToken);
}

class ApiCardsRepository implements CardsRepository {
  final _dio = Dio();
  final _cardsPath = 'https://trello.backend.tests.nekidaem.ru/api/v1/cards/';
  @override
  Future<AbstractResult> getCards(Token authToken) async {
    try {
      final options = Options(
          headers: {HttpHeaders.authorizationHeader: 'JWT ${authToken.value}'});
      final response = await _dio.get(_cardsPath, options: options);

      final cards = (response.data as List<dynamic>).map((json) => KanbanCard.fromJson(json)).toList();
      
      return ResultOf.successful(cards);
    } on DioError catch (e) {
      final failure = Failure(describeEnum(e.type));
      if (e.response != null) {
        failure.data['response_data'] = e.response!.data;
      }
      failure.data['message'] = e.message;

      return Result.failed(failure);
    }
  }
}
