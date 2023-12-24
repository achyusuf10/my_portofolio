import 'dart:developer';

import 'package:flutter/foundation.dart';

class AppLogger {
  static call(
    String message, {
    String name = 'LOG',
  }) {
    if (kDebugMode) {
      log(message, name: name);
    }
  }
}
