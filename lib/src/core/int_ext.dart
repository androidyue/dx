extension NullableIntFallbackExt on int? {
  int orZero() => this ?? 0;
  int orOne() => this ?? 1;
  int or(int fallback) => this ?? fallback;
}