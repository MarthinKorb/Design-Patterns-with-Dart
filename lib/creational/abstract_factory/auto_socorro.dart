import 'package:design_patterns/creational/abstract_factory/auto_socorro_factory.dart';
import 'package:design_patterns/creational/abstract_factory/impl/socorro_veiculo_grande_factory.dart';
import 'package:design_patterns/creational/abstract_factory/impl/socorro_veiculo_medio_factory.dart';
import 'package:design_patterns/creational/abstract_factory/impl/socorro_veiculo_pequeno_factory.dart';
import 'package:design_patterns/creational/abstract_factory/models/guincho.dart';

import 'models/veiculo.dart';

class AutoSocorro {
  Veiculo _veiculo;
  Guincho _guincho;

  AutoSocorro(AutoSocorroFactory autoSocorroFactory,Veiculo veiculo) {
    _veiculo = autoSocorroFactory.criarViculo(veiculo.modelo, veiculo.porte);
    _guincho = autoSocorroFactory.criarGuincho();
  }

  void realizarAtendimento() {
    _guincho.Socorrer(_veiculo);
  }

  static AutoSocorro criarAutoSocorro(Veiculo veiculo) {
    switch (veiculo.porte) {
      case Porte.PEQUENO:
          return AutoSocorro(SocorroVeiculoPequenoFactory(), veiculo);
        break;
        case Porte.MEDIO:
          return AutoSocorro(SocorroVeiculoMedioFactory(), veiculo);
        break;case Porte.GRANDE:
          return AutoSocorro(SocorroVeiculoGrandeFactory(), veiculo);
        break;
      default: throw Exception('Não foi possível identificar o veículo.');
    }
  }
}