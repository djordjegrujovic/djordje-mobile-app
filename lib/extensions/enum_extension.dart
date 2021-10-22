extension EnumExtension on Object {
  T? enumFromString<T>(List<T> enumValues, String value) {
    return enumFromStringStatic(enumValues, value);
  }

  String? enumToString<T>(T enumItem) {
    return enumToStringStatic(enumItem);
  }

  static T? enumFromStringStatic<T>(List<T> enumValues, String value) {
    try {
      final enumEntry = enumValues.singleWhere((enumItem) {
        final enumValue = _enumToStringInternal(enumItem);
        return enumValue == value;
      });
      return enumEntry;
    } catch (_) {
      return null;
    }
  }

  static String? enumToStringStatic<T>(T enumItem) {
    try {
      final value = _enumToStringInternal(enumItem);
      return value;
    } catch (_) {
      return null;
    }
  }

  static String _enumToStringInternal<T>(T enumEntry) {
    // taken from describeEnum in flutter foundation
    final String description = enumEntry.toString();
    final int indexOfDot = description.indexOf('.');
    assert(
      indexOfDot != -1 && indexOfDot < description.length - 1,
      'The provided object "$enumEntry" is not an enum.',
    );
    return description.substring(indexOfDot + 1);
  }
}
