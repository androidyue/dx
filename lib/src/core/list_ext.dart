
import 'package:dx/src/core/iterable_ext.dart';

List<E> listOf<E>([E? first, E? second, E? third]) {
  return [
    if (first != null) first,
    if (second != null) second,
    if (third != null) third,
  ];
}

extension NullableListFallbackExt<E> on List<E>? {
  List<E> orEmptyList() => this ?? List.empty();
}


extension ListExt<E> on List<E> {
  bool addIfNotNull(E? element) {
    if (element == null) {
      return false;
    } else {
      add(element);
      return true;
    }
  }

  bool addNonNullElements(Iterable<E?>? collection) {
    final nonNullElements = collection?.filterNotNull();
    if (nonNullElements?.isNotEmpty == true) {
      addAll(nonNullElements!);
      return true;
    } else {
      return false;
    }
  }
}