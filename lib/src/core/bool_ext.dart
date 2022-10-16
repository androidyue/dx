extension NullableBoolFallbackExt on bool? {
  bool orTrue() {
    return this ?? true;
  }

  bool orFalse() {
    return this ?? false;
  }
}