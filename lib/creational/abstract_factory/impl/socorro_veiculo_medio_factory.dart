import 'package:design_patterns/creational/abstract_factory/auto_socorro_factory.dart';
import 'package:design_patterns/creational/abstract_factory/models/guincho.dart';
import 'package:design_patterns/creational/abstract_factory/models/veiculo.dart';

class SocorroVeiculoMedioFactory implements AutoSocorroFactory {
  @override
  Guincho criarGuincho() {
    return GuinchoMedio(Porte.MEDIO);
  }

  @override
  Veiculo criarViculo(String modelo, Porte porte) {
    return VeiculoMedio(modelo, porte);
  }
}