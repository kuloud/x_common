part of 'package:x_common/x_common.dart';

class Env {
  static const String channel =
      String.fromEnvironment('CHANNEL', defaultValue: 'None');
  static const bool inProduction = bool.fromEnvironment("dart.vm.product");
}
