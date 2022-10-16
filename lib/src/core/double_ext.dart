extension NullableDoubleFallbackExt on double? {
  double orZero() => this ?? 0.0;
  double orOne() => this ?? 1.0;
  double or(double fallback) => this ?? fallback;
}