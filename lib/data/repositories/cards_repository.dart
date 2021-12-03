import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban/common/resulting/failure.dart';
import 'package:kanban/common/resulting/result.dart';
import 'package:kanban/data/models/kanban_card.dart';
import 'package:kanban/data/models/token.dart';

abstract class CardsRepository {
  Future<AbstractResult> getCards(Token authToken);
}

@Injectable(as: CardsRepository)
class ApiCardsRepository implements CardsRepository {
  final _dio = Dio();
  final _cardsPath = 'https://trello.backend.tests.nekidaem.ru/api/v1/cards/';
  @override
  Future<AbstractResult> getCards(Token authToken) async {
    try {
      final options = Options(
          headers: {HttpHeaders.authorizationHeader: 'JWT ${authToken.value}'});
      final response = await _dio.get(_cardsPath, options: options);

      final cards = (response.data as List<dynamic>)
          .map((json) => KanbanCard.fromJson(json))
          .toList();

      return ResultOf.successful(cards);
    } on DioError catch (e) {
      final failure = Failure(describeEnum(e.type));
      if (e.response != null) {
        final serializedErrors = (e.response!.data as Map<String, dynamic>).map(
            (key, value) => MapEntry(
                key, value is List ? value.join('\n') : value.toString()));

        failure.data.addAll(serializedErrors);
      }
      failure.data['message'] = e.message;

      return Result.failed(failure);
    }
  }
}
