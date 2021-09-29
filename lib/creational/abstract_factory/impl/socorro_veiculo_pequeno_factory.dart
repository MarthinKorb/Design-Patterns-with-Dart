import 'package:design_patterns/creational/abstract_factory/auto_socorro_factory.dart';
import 'package:design_patterns/creational/abstract_factory/models/guincho.dart';
import 'package:design_patterns/creational/abstract_factory/models/veiculo.dart';

class SocorroVeiculoPequenoFactory implements AutoSocorroFactory {
  @override
  Guincho criarGuincho() {
    return GuinchoPequeno(Porte.PEQUENO);
  }

  @override
  Veiculo criarViculo(String modelo, Porte porte) {
    return VeiculoPequeno(modelo, porte);
  }
}