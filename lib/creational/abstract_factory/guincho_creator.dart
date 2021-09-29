import 'package:design_patterns/creational/abstract_factory/auto_socorro_factory.dart';
import 'package:design_patterns/creational/abstract_factory/models/guincho.dart';


class GuinchoCreator {
  static Guincho criar(Porte porte) {
    switch (porte) {
      case Porte.PEQUENO:
        return GuinchoPequeno(porte);
        break;  
        case Porte.MEDIO:
        return GuinchoMedio(porte);
        break;  
        case Porte.GRANDE:
        return GuinchoGrande(porte);
        break;
        default: throw Exception('Porte de guincho desconhecido.');
    }
  }
}