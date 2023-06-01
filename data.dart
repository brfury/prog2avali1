
import 'dart:io';

abstract class Data {
  Map<String, dynamic> _data= {};
  final List<String> _fields = [];

  void load(String fileName) {
    final file = File(fileName);
    data = file.readAsStringSync();
  }

  void save(String fileName) {
    final file = File(fileName);
    file.createSync();
    file.writeAsStringSync(data);
  }

  void clear() {
    _data.clear();
  }

  List<String> get fields => _fields;

  bool get hasData => _data.isNotEmpty;

  set data(String string);

  String get data;
}