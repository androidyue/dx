

extension StringExt on String? {
  bool isNotNullAndNotEmpty() {
    return this?.isNotEmpty == true;
  }

}