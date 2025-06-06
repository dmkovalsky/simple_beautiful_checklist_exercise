import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_beautiful_checklist_exercise/data/database_repository.dart';

class SharedPreferencesRepository implements DatabaseRepository {
  @override
  Future<void> addItem(String item) async {
    // instance of SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    // set the string list 'items' in SharedPreferences
    // by appending the new item to the existing list
    prefs.setStringList(
      'items',
      [...(prefs.getStringList('items') ?? []), item],
    );
  }

  @override
  Future<void> deleteItem(int index) async {
    // instance of SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    // get the string list 'items' from SharedPreferences
    final items = prefs.getStringList('items') ?? [];
    // remove the item at the specified index
    items.removeAt(index);
    // set the updated list back to SharedPreferences
    await prefs.setStringList('items', items);
  }

  @override
  Future<void> editItem(int index, String newItem) async {
    // instance of SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    // get the string list 'items' from SharedPreferences
    final items = prefs.getStringList('items') ?? [];
    // update the item at the specified index
    items[index] = newItem;
    // set the updated list back to SharedPreferences
    await prefs.setStringList('items', items);
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
