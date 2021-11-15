import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:kanban/data/models/token.dart';
import 'package:kanban/data/repositories/result/failure.dart';
import 'package:kanban/data/repositories/result/result.dart';

abstract class AuthenticationRepository {
  Future<AbstractResult> getToken(String username, String password);
}

class ApiAuthenticationRepository implements AuthenticationRepository {
  final _dio = Dio();
  final _loginPath = 'https://trello.backend.tests.nekidaem.ru/api/v1/users/login/';

  @override
  Future<AbstractResult> getToken(String username, String password) async {
    try {
      final data = {'username': username, 'password': password};

      final response = await _dio.post(
          _loginPath,
          data: data);

      return ResultOf.successful(Token.fromJson(response.data));
    } on DioError catch (e) {
      final failure = Failure(describeEnum(e.type));
      if (e.response != null) {
        failure.data['response_data'] = e.response!.data.toString();
      }
      failure.data['message'] = e.message;

      return Result.failed(failure);
    }
  }
}
