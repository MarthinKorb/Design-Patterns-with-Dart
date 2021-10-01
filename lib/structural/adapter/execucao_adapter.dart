import 'package:design_patterns/structural/adapter/log_adapter.dart';
import 'package:design_patterns/structural/adapter/logger.dart';
import 'package:design_patterns/structural/adapter/logger_master_service.dart';
import 'package:design_patterns/structural/adapter/transacao_service.dart';

class ExecucaoAdapter {
  static void executar() {
    final pagamentoLogPadrao = TransacaoService(Logger());
    pagamentoLogPadrao.realizarTransacao();
    print('');
    final pagamentoLogCustomizado =
        TransacaoService(LogAdapter(LogNetMasterService()));
    pagamentoLogCustomizado.realizarTransacao();
  }
}
