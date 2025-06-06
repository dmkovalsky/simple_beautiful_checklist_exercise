import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_beautiful_checklist_exercise/data/database_repository.dart';

class SharedPreferencesRepository implements DatabaseRepository {
  @override
  Future<void> addItem(String item) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(
      'items',
      [...(prefs.getStringList('items') ?? []), item],
    );
  }

  @override
  Future<void> deleteItem(int index) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<void> editItem(int index, String newItem) {
    // TODO: implement editItem
    throw UnimplementedError();
  }

  @override
  Future<int> getItemCount() {
    // TODO: implement getItemCount
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getItems() async {
    final prefs = await SharedPreferences.getInstance();
    final items = prefs.getStringList('items') ?? [];
    return items;
  }
}
