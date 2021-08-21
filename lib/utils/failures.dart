import 'package:flutter/foundation.dart';

class NotFound {
  NotFound(this.message) {
    debugPrint('Error: $message');
  }

  final String message;
}
