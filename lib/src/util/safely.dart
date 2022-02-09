/// run getValueAction with try-catch
/// return the result of getValueAction if no exception occurs,
/// otherwise return null instead.
T? getValueSafely<T>(T? Function() getValueAction) {
  try {
    return getValueAction.call();
  } catch(e, s) {
    return null;
  }
}