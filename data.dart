
import 'dart:io';

abstract class Data {
  Map<String, dynamic> _date= {};
  final List<String> _fields = [];

  void load(String FilePath) {
    final file = File(FilePath);
    data = file.readAsStringSync();
  }

  void save(String FilePath) {
    final file = File(FilePath);
    file.createSync();
    file.writeAsStringSync(date);
  }

  void clear() {
    _date.clear();
    _fields.clear();
  }

  List<String> get fields => _fields;

  bool get hasData => _date.isNotEmpty;

  set data(String n);

  String get date;
}