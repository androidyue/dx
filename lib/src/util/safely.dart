import 'package:either_dart/either.dart';

/// run getValueAction with try-catch
/// return the result of getValueAction if no exception occurs,
/// otherwise return null instead.
Either<Object, T?> getValueSafely<T>(T? Function() getValueAction) {
  try {
    final value =  getValueAction.call();
    return Right(value);
  } catch(e, _) {
    return Left(e);
  }
}

