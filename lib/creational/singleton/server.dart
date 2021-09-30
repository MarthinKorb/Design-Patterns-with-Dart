import 'dart:convert';

class Server {
  String name;
  String ip;

  Server({this.name, this.ip});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ip': ip,
    };
  }

  factory Server.fromMap(Map<String, dynamic> map) {
    return Server(
      name: map['name'],
      ip: map['ip'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Server.fromJson(String source) => Server.fromMap(json.decode(source));
}
