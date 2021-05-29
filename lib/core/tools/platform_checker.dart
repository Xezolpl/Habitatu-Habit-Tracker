import 'dart:io';

import 'package:flutter/foundation.dart';

enum PlatformType { android, ios, web, other }

extension XPlatformType on PlatformType {
  bool get isAndroid => this == PlatformType.android;
  bool get isIos => this == PlatformType.ios;
  bool get isWeb => this == PlatformType.web;
  bool get isOther => this == PlatformType.other;
  bool get isMobile => this == PlatformType.android || this == PlatformType.ios;
}

abstract class PlatformChecker {
  static PlatformType get platform {
    if (kIsWeb) {
      //First check if is web because trying to check platform
      //by dart.io:Platform.isX on web causues error
      return PlatformType.web;
    }
    if (Platform.isAndroid) {
      return PlatformType.android;
    }
    if (Platform.isIOS) {
      return PlatformType.ios;
    }
    return PlatformType.other;
  }
}
