import 'package:flutter/foundation.dart';
import 'package:note_app_vtwo/data/databaseHelper.dart';
import 'package:note_app_vtwo/data/model.dart';
import 'package:sqflite/sqflite.dart';

class TruckProvider with ChangeNotifier {
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  List<Truck> _trucks = [];

  List<Truck> get trucks => _trucks;

  Future<void> loadTrucks() async {
    // _trucks = await _databaseHelper.getTrucks();

    final truckData = await _databaseHelper.getAllTrucks();
    final List<Truck> trucks = [];

    for (var truckMap in truckData) {
      final truck = Truck.fromMap(truckMap);
      final expenses = await _databaseHelper.getExpenses(truck.id);
      truck.expenses = expenses;
      trucks.add(truck);
    }
    _trucks = trucks;
    for (int i = 0; i < _trucks.length; i++) {
      _trucks[i].number = i + 1;
    }
    notifyListeners();
  }

  Future<void> addTruck(Truck truck) async {
    await _databaseHelper.insertTruck(truck);
    await loadTrucks();
  }

  Future<void> deleteTruck(int id) async {
    await _databaseHelper.deleteExpensesByTruckId(id);
    await _databaseHelper.deleteTruck(id);

    await loadTrucks();
  }

  Future<void> addExpense(Expense expense, int truckId) async {
    await _databaseHelper.insertExpense(expense, truckId);
    await loadTrucks();
  }

  Future<void> updateBudget(int truckId, int newBudget) async {
    await _databaseHelper.saveBudget(truckId, newBudget);
    await loadTrucks();
  }

  Future<void> deleteExpense(int expenseId) async {
    await _databaseHelper.deleteExpense(expenseId);
    await loadTrucks();
  }
}
