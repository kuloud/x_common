import 'package:logger/logger.dart';

// 基础的logger实例
Logger logger = Logger(
  printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 80,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart),
);
