

extension StringExt on String? {
  bool isNotNullAndNotEmpty() {
    return this?.isNotEmpty == true;
  }

  /// check a nullable String is not null and is not empty
  bool isNotNullNorEmpty() {
    return this?.isNotEmpty == true;
  }

  /// Return a bool if the string is null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

}