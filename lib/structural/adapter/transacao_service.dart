import 'package:design_patterns/structural/adapter/i_logger.dart';

class TransacaoService {
  final ILogger _logger;

  const TransacaoService(this._logger);

  void realizarTransacao() {
    _logger.log('Transação realizada.');
  }
}
