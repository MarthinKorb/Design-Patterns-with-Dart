import 'package:design_patterns/structural/adapter/i_logger.dart';

class Logger implements ILogger {
  @override
  void log(String message) {
    print('Log padrão - $message');
  }

  @override
  void logError(Exception exception) {
    print('Log padrão - $exception');
  }
}
