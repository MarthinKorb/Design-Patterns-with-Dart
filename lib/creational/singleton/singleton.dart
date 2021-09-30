import 'package:design_patterns/creational/singleton/load_balancer.dart';

class Singleton {
  static void executar() {
    final b1 = LoadBalancer.getLoadBalancer();
    final b2 = LoadBalancer.getLoadBalancer();
    final b3 = LoadBalancer.getLoadBalancer();
    final b4 = LoadBalancer.getLoadBalancer();

    if (b1 == b2 && b2 == b3 && b3 == b4) {
      print('Mesma instância\n');
    }

    final balancer = LoadBalancer.getLoadBalancer();

    for (var i = 0; i < 15; i++) {
      var serverName = balancer.nextServer.name;
      print('Disparando request para: $serverName');
    }
  }
}

void main() {
  Singleton.executar();
}
