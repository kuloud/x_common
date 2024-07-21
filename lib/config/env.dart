class Env {
  // 渠道
  static const String channel =
      String.fromEnvironment('CHANNEL', defaultValue: 'None');
  // 是否线上版本
  static const bool inProduction = bool.fromEnvironment("dart.vm.product");
}
