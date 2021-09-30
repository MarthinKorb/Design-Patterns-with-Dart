import 'dart:math';

import 'package:design_patterns/creational/singleton/server.dart';

class LoadBalancer {
  static final LoadBalancer _instance = LoadBalancer();

  List<Server> _servers;
  final _random = Random();

  LoadBalancer() {
    _servers = [
      Server(name: 'Server I', ip: '120.14.220.18'),
      Server(name: 'Server II', ip: '120.14.220.19'),
      Server(name: 'Server III', ip: '120.14.220.20'),
      Server(name: 'Server IV', ip: '120.14.220.21'),
      Server(name: 'Server V', ip: '120.14.220.22'),
    ];
  }

  static LoadBalancer getLoadBalancer() => _instance;

  Server get nextServer {
    var r = _random.nextInt(_servers.length);
    return _servers[r];
  }
}
