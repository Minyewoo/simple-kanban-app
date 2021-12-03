import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban/common/resulting/failure.dart';
import 'package:kanban/common/resulting/result.dart';
import 'package:kanban/data/models/token.dart';

abstract class AuthenticationRepository {
  Future<AbstractResult> getToken(String username, String password);
}

@Injectable(as: AuthenticationRepository)
class ApiAuthenticationRepository implements AuthenticationRepository {
  final _dio = Dio();
  final _loginPath =
      'https://trello.backend.tests.nekidaem.ru/api/v1/users/login/';

  @override
  Future<AbstractResult> getToken(String username, String password) async {
    try {
      final data = {'username': username, 'password': password};

      final response = await _dio.post(_loginPath, data: data);

      return ResultOf.successful(Token.fromJson(response.data));
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
