import 'package:flutter/material.dart';

class InsertColorFunc {
  static Color call({
    required Color darkTheme,
    required Color lightTheme,
    required BuildContext context,
  }) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return darkTheme;
    }
    return lightTheme;
  }
}
