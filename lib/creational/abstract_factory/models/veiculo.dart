import 'package:design_patterns/creational/abstract_factory/auto_socorro_factory.dart';

abstract class Veiculo {
  final String modelo;
  final Porte porte;
  
  const Veiculo(this.modelo, this.porte);
}

class VeiculoPequeno extends Veiculo {
  VeiculoPequeno(String modelo, Porte porte) : super(modelo, porte);
}

class VeiculoMedio extends Veiculo {
  VeiculoMedio(String modelo, Porte porte) : super(modelo, porte);
}

class VeiculoGrande extends Veiculo {
  VeiculoGrande(String modelo, Porte porte) : super(modelo, porte);
}