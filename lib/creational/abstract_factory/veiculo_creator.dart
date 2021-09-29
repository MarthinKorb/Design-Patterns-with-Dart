import 'package:design_patterns/creational/abstract_factory/models/veiculo.dart';

import 'auto_socorro_factory.dart';

class VeiculoCreator {
  static Veiculo criar(String modelo, Porte porte) {
    switch (porte) {
      case Porte.PEQUENO:
        return VeiculoPequeno(modelo,porte);
        break;  
        case Porte.MEDIO:
        return VeiculoMedio(modelo, porte);
        break;  
        case Porte.GRANDE:
        return VeiculoGrande(modelo, porte);
        break;
        default: throw Exception('Porte de veículo desconhecido.');
    }
  }
}