extension NullableMapFallbackExt<K, V> on Map<K, V>? {
  Map<K,V> orEmptyMap() => this ?? {};
}