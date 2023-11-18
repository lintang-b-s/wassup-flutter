

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassup/data/status_data.dart';
import 'package:wassup/models/StatusModel.dart';

class StatusNotifier extends StateNotifier<List<StatusesModel>> {
  StatusNotifier() : super(statutsesData);

  void viewPeopleStatus(String name) {
    var status = state.where((m) => m.name == name).first;
    state = state.where((m) => m.name != name).toList();
    status.viewed = true;
    state = [...state, status];
    return;
  }

}

final statusProvider = 
  StateNotifierProvider<StatusNotifier, List<StatusesModel>>((ref) {
    return StatusNotifier();
  });