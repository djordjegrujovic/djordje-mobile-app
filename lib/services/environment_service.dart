import 'package:flutter/services.dart';
import 'package:fm_flutter_mobile/mixins/logger_mixin.dart';
import 'package:fm_flutter_mobile/extensions/enum_extension.dart';

enum Environment { dev }

class EnvironmentService with LoggerMixin {
  static bool _init = false;
  static late Environment _environment;

  static Environment get environment => _environment;

  static Future<void> init() async {
    if (!_init) {
      _init = true;
      String config = await rootBundle.loadString("assets/statics/config.conf");
      List<String> split =
          config.split('\n').map((String s) => s.trim()).toList();

      for (String part in split) {
        if (part.startsWith('ENV=')) {
          final env = part.substring('ENV='.length).toLowerCase();
          _environment =
              EnumExtension.enumFromStringStatic(Environment.values, env)!;
          continue;
        }
      }
    }
  }

  static void printEnv() {
    LoggerMixin.logInfo('EnvironmentService', 'environment: $_environment');
  }
}
