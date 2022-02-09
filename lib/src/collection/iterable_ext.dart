
import 'package:dx/src/util/safely.dart';

extension IterableExt<E> on Iterable<E> {
  E? firstOrNull() {
    return isNotEmpty ? first: null;
  }

  E? firstOrNullWhere(bool Function(E element) test) {
    return getValueSafely(() {
      return firstWhere(test);
    });
  }

  E? lastOrNull() {
    return isNotEmpty ? last : null;
  }

  E? lastOrNullWhere(bool Function(E element) test) {
    return getValueSafely(() {
      return lastWhere(test);
    });
  }
}