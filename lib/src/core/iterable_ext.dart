

import '../../dx.dart';

extension IterableExt<E> on Iterable<E?> {
  E? firstOrNull() {
    return isNotEmpty ? first: null;
  }

  E firstOr(E fallback) {
    return firstOrNull() ?? fallback;
  }

  E? firstOrNullWhere(bool Function(E? element) test) {
    final either = getValueSafely(() {
      return firstWhere(test);
    });
    if (either.isRight) {
      return either.right;
    }
    return null;
  }

  E? lastOrNull() {
    return isNotEmpty ? last : null;
  }

  E lastOr(E fallback) {
    return lastOrNull() ?? fallback;
  }

  E? lastOrNullWhere(bool Function(E? element) test) {
    final either = getValueSafely(() {
      return lastWhere(test);
    });
    if (either.isRight) {
      return either.right;
    }
    return null;
  }

  E? secondOrNull() {
    return skip(1).firstOrNull();
  }

  E secondOr(E fallback) {
    return secondOrNull() ?? fallback;
  }

  E? thirdOrNull() {
    return skip(2).firstOrNull();
  }

  E thirdOr(E fallback) {
    return thirdOrNull() ?? fallback;
  }

  bool anyNull() {
    return any((element) => element == null);
  }

  bool allNull() {
    return every((element) => element == null);
  }

  bool allNotNull() {
    return every((element) => element != null);
  }

  Iterable<E> filterNotNull() {
    final newIterable = where((element) => element != null);
    return Iterable.castFrom(newIterable);
  }


  Iterable<T> mapNotNull<T>(T? Function(E? e) toElement) {
      return map(toElement).filterNotNull();
  }
}
