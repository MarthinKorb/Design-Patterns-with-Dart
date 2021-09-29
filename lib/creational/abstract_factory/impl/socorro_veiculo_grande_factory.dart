import 'package:design_patterns/creational/abstract_factory/auto_socorro_factory.dart';
import 'package:design_patterns/creational/abstract_factory/models/guincho.dart';
import 'package:design_patterns/creational/abstract_factory/models/veiculo.dart';

class SocorroVeiculoGrandeFactory implements AutoSocorroFactory {
  @override
  Guincho criarGuincho() {
    return GuinchoGrande(Porte.GRANDE);
  }

  @override
  Veiculo criarViculo(String modelo, Porte porte) {
    return VeiculoGrande(modelo, porte);
  }
}