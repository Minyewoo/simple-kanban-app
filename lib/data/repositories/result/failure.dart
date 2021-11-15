abstract class AbstractFailure {
  String get type;
  Map<String, dynamic> get data;
}

class Failure implements AbstractFailure {
  @override
  final String type;
  @override
  final Map<String, dynamic> data = <String, dynamic>{};

  Failure(this.type);
}