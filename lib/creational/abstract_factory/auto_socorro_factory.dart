import 'package:design_patterns/creational/abstract_factory/models/guincho.dart';
import 'package:design_patterns/creational/abstract_factory/models/veiculo.dart';

abstract class AutoSocorroFactory {
  Guincho criarGuincho();
  Veiculo criarViculo(String modelo, Porte porte);
}

enum Porte {
  PEQUENO,
  MEDIO,
  GRANDE
}