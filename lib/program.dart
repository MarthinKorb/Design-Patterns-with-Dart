import 'dart:io';

import 'package:design_patterns/creational/abstract_factory/execucao_abstract_factory.dart';

void main() {
  print('Escolha a operação: ');
  print('------------------- ');
  print('Creational Patterns');
  print('------------------- ');
  print('1 - Abstract Factory');

  print('');
  print('Opção: ');
  var opcao = int.tryParse(stdin.readLineSync());

  switch(opcao) {
    case 1: 
    ExecucaoAbstractFactory.executar();
      break;
  }
}