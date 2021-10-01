import 'dart:io';

import 'package:design_patterns/creational/abstract_factory/execucao_abstract_factory.dart';
import 'package:design_patterns/creational/singleton/singleton.dart';

import 'structural/adapter/execucao_adapter.dart';

void main() {
  print('Escolha a operação: ');
  print('------------------- ');
  print('Creational Patterns');
  print('------------------- ');
  print('1 - Abstract Factory');
  print('2 - Singleton');
  print('------------------- ');
  print('Structural Patterns');
  print('------------------- ');
  print('3 - Adapter');
  print('------------------- ');
  print('');
  print('0 - Sair');

  print('');
  print('Opção: ');
  var opcao = int.tryParse(stdin.readLineSync());

  switch (opcao) {
    case 1:
      ExecucaoAbstractFactory.executar();
      break;
    case 2:
      Singleton.executar();
      break;
    case 3:
      ExecucaoAdapter.executar();
      break;
    case 0:
      return;
  }
  print('');
  opcao = null;
  main();
}
