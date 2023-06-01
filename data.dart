import 'dart:convert';
import 'dart:io';

abstract class Data {
  Map<String, dynamic> _data;
  final List<String> _fields = [];

  Data(this._data);

  void load(String fileName) {
    final file = File(fileName);
    final jsonString = file.readAsStringSync();
    _data = jsonDecode(jsonString);
  }

  void save(String fileName) {
    final jsonString = jsonEncode(_data);
    final file = File(fileName);
    file.createSync();
    file.writeAsStringSync(jsonString);
  }

  void clear() {
    _data.clear();
  }

  List<String> get fields => _fields;

  bool get hasData => _data.isNotEmpty;

  set data(Map<String, dynamic> n) {
    _data = n;
  }

   Map<String, dynamic> get data => _data;
}