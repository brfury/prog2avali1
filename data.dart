
import 'dart:io';

abstract class Data {
  Map<String, dynamic> _data= {};
  final List<String> _fields = [];

  void load(String arquivo) {
    final file = File(arquivo);
    data = file.readAsStringSync();
  }

  void save(String arquivo) {
    final file = File(arquivo);
    file.createSync();
    file.writeAsStringSync(data);
  }

  void clear() {
    _data.clear();
  }

  List<String> get fields => _fields;

  bool get hasData => _data.isNotEmpty;

  set data(String n);

  String get data;
}