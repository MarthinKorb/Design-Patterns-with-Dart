import 'package:design_patterns/structural/adapter/i_logger_master.dart';

class LogNetMasterService implements ILogMaster {
  @override
  void logInfo(String message) {
    print('Log customizado - $message');
  }

  @override
  void logException(Exception exception) {
    print('Log customizado - $exception');
  }
}
