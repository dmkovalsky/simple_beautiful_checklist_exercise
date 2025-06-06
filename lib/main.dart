import 'package:flutter/material.dart';
import 'package:simple_beautiful_checklist_exercise/data/database_repository.dart';
//import 'package:simple_beautiful_checklist_exercise/data/mock_database_repository.dart';
import 'package:simple_beautiful_checklist_exercise/data/shared_preferences_repository.dart';
import 'package:simple_beautiful_checklist_exercise/src/app.dart';

void main() async {
  // Wird benötigt, um auf SharedPreferences zuzugreifen
  WidgetsFlutterBinding.ensureInitialized();

  // Das MockDatabaseRepository() mit ein SharedPreferencesRepository() ersetzt
  // final DatabaseRepository repository = MockDatabaseRepository();
  final DatabaseRepository repository = SharedPreferencesRepository();

  runApp(App(repository: repository));
}
