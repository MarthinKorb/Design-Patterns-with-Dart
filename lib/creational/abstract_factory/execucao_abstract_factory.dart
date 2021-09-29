

import 'package:design_patterns/creational/abstract_factory/auto_socorro.dart';
import 'package:design_patterns/creational/abstract_factory/auto_socorro_factory.dart';
import 'package:design_patterns/creational/abstract_factory/veiculo_creator.dart';

class ExecucaoAbstractFactory {
  static void executar() {
    final veiculosSocorro = [
      VeiculoCreator.criar('Celta', Porte.PEQUENO),
      VeiculoCreator.criar('Jetta', Porte.MEDIO),
      VeiculoCreator.criar('BMW X6', Porte.GRANDE),
    ];

    veiculosSocorro.forEach((veiculo) { 
      AutoSocorro.criarAutoSocorro(veiculo).realizarAtendimento();
    });
  }
}