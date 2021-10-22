enum _LogSeverity { info, debug, warning, error }

mixin LoggerMixin {
  void logD(String message) {
    final loggerName = toString();
    _printWithSeverity(_LogSeverity.debug, '$loggerName: $message');
  }

  void logI(String message) {
    final loggerName = toString();
    _printWithSeverity(_LogSeverity.info, '$loggerName: $message');
  }

  void logW(String message) {
    final loggerName = toString();
    _printWithSeverity(_LogSeverity.warning, '$loggerName: $message');
  }

  void logE(String message, {String? debugText}) {
    final loggerName = toString();
    _printWithSeverity(_LogSeverity.error, '$loggerName: $message',
        debugText: debugText);
  }

  static void logDebug(String name, String message) {
    _printWithSeverity(_LogSeverity.debug, '$name: $message');
  }

  static void logInfo(String name, String message) {
    _printWithSeverity(_LogSeverity.debug, '$name: $message');
  }

  static void logWarning(String name, String message) {
    _printWithSeverity(_LogSeverity.debug, '$name: $message');
  }

  static void logError(String name, String message, {String? debugText}) {
    _printWithSeverity(_LogSeverity.debug, '$name: $message');
  }

  //todo: implement this correctly
  static void _printWithSeverity(_LogSeverity severity, String message,
      {String? debugText}) {
    var output = message;
    if (debugText != null) {
      output += ', error: $debugText';
    }
    print(output);
  }
}
