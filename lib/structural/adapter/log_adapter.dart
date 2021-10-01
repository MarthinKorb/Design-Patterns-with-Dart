import 'package:design_patterns/structural/adapter/i_logger.dart';
import 'package:design_patterns/structural/adapter/i_logger_master.dart';

class LogAdapter implements ILogger {
  final ILogMaster _logMaster;
  const LogAdapter(this._logMaster);

  @override
  void log(String message) {
    _logMaster.logInfo(message);
  }

  @override
  void logError(Exception exception) {
    _logMaster.logException(exception);
  }
}
