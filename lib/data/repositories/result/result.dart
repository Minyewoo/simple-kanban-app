import 'failure.dart';

abstract class AbstractResult {
  bool get isSuccessful;
  void addFailure(AbstractFailure error);
  List<AbstractFailure> get failures;
}

abstract class AbstractResultOf<T> extends AbstractResult {
  T? get value;
}

class Result implements AbstractResult {
  final List<AbstractFailure> _failures = <AbstractFailure>[];

  @override
  bool get isSuccessful => _failures.isEmpty;

  @override
  List<AbstractFailure> get failures => List.unmodifiable(_failures);

  @override
  void addFailure(AbstractFailure failure) {
    _failures.add(failure);
  }

  Result();
  Result.successful();
  Result.failed(AbstractFailure failure) {
    addFailure(failure);
  }
}

class ResultOf<T> extends Result implements AbstractResultOf<T> {
  @override
  T? value;

  ResultOf(this.value);
  ResultOf.successful(this.value);
  ResultOf.failed(AbstractFailure failure) {
    addFailure(failure);
  }
}

extension ResultWithValue<T> on AbstractResult {
  T? get value => this is ResultOf<T>
      ? (this as ResultOf<T>).value
      : throw UnsupportedError('Result is not contains any additional value');
}
