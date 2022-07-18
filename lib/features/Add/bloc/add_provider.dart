import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Add/data/add_model.dart';

class AddNotifier extends ChangeNotifier {
  final List<AddModel> todoList = [];

  addModelData(Map<String, dynamic> data) {
    final count = todoList.length;
    data = {
      ...data,
      "id": count + 1,
    };
    todoList.add(AddModel.fromJson(data));
    notifyListeners();
  }

  removeModelData(int id) {
    todoList.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  getDataById(int id) {
    final index = todoList.indexWhere((element) => element.id == id);
    if (index > -1) {
      return todoList[index];
    }
    return null;
  }
}

final addProvider = ChangeNotifierProvider((ref) => AddNotifier());
