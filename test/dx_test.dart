import 'package:dx/dx.dart';
import 'package:dx/src/collection/iterable_ext.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('firstOrNull', () {
      /// first of an empty list is null
      expect(<int>[].firstOrNull(), null);
      /// first of [1] is 1
      expect([1].firstOrNull(), 1);
      /// first of [1,2] is 1
      expect([1,2].firstOrNull(), 1);
    });

    test('firstOrNullWhere', () {
      /// first of an empty list with any filter is null
      expect(<int>[].firstOrNullWhere((element) => true), null);

      /// first of [1] with filter(element == 1) is  1
      expect([1].firstOrNullWhere((element) => element == 1), 1);

      /// first of [1] with filter(element == 2) is null
      expect([1].firstOrNullWhere((element) => element == 2), null);

      /// first of [1,2] with filter(element == 2) is 2
      expect([1,2].firstOrNullWhere((element) => element == 2), 2);
    });

    test('lastOrNull', () {
      /// last of an empty list is null
      expect(<int>[].lastOrNull(), null);
      /// last of [1] is 1
      expect([1].lastOrNull(), 1);
      /// last of [1,2] is 1
      expect([1,2].lastOrNull(), 2);
    });

    test('lastOrNullWhere', () {
      /// last of an empty list with any filter is null
      expect(<int>[].lastOrNullWhere((element) => true), null);

      /// last of [1] with filter(element == 1) is  1
      expect([1].lastOrNullWhere((element) => element == 1), 1);

      /// last of [1] with filter(element == 2) is null
      expect([1].lastOrNullWhere((element) => element == 2), null);

      /// last of [1,2] with filter(element == 2) is 2
      expect([1,2].lastOrNullWhere((element) => element == 2), 2);
    });


  });
}