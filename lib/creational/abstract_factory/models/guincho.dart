import 'package:design_patterns/creational/abstract_factory/auto_socorro_factory.dart';
import 'package:design_patterns/creational/abstract_factory/models/veiculo.dart';


abstract class Guincho {
  final Porte porte;
  Guincho(this.porte);

  void Socorrer(Veiculo veiculo);
}


class GuinchoPequeno extends Guincho {
  
  GuinchoPequeno(Porte porte) : super(porte);

  
  @override
  void Socorrer(veiculo) {
    print( 'Socorrendo Carro pequeno - Modelo ${veiculo.modelo}');
  }

}

class GuinchoMedio extends Guincho {
  
  GuinchoMedio(Porte porte) : super(porte);

  
  @override
  void Socorrer(Veiculo veiculo) {
    print( 'Socorrendo Carro médio - Modelo ${veiculo.modelo}');
  }

}

class GuinchoGrande extends Guincho {
  
  GuinchoGrande(Porte porte) : super(porte);
  
  @override
  void Socorrer(Veiculo veiculo) {
    print( 'Socorrendo Carro grande - Modelo ${veiculo.modelo}');
  }
}