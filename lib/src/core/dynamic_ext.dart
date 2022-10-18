T? asType<T>(final dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

bool? asBool(final dynamic value) {
  return asType(value);
}

String? asString(final dynamic value) {
  return asType(value);
}

double? asDouble(final dynamic value) {
  return asType(value);
}

int? asInt(final dynamic value) {
  return asType(value);
}
