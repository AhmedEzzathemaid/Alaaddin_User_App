import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eightythree_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/eightythree_screen/models/eightythree_model.dart';
part 'eightythree_event.dart';
part 'eightythree_state.dart';

/// A bloc that manages the state of a Eightythree according to the event that is dispatched to it.
class EightythreeBloc extends Bloc<EightythreeEvent, EightythreeState> {
  EightythreeBloc(EightythreeState initialState) : super(initialState) {
    on<EightythreeInitialEvent>(_onInitialize);
  }

  List<EightythreeItemModel> fillEightythreeItemList() {
    return [
      EightythreeItemModel(zipcode: "2000"),
      EightythreeItemModel(zipcode: "5000"),
      EightythreeItemModel(zipcode: "8000"),
      EightythreeItemModel(zipcode: "12000"),
      EightythreeItemModel(zipcode: "12000")
    ];
  }

  _onInitialize(
    EightythreeInitialEvent event,
    Emitter<EightythreeState> emit,
  ) async {
    emit(state.copyWith(
      durationController: TextEditingController(),
      group1000001174Controller: TextEditingController(),
      group1000001168Controller: TextEditingController(),
      emailController: TextEditingController(),
      emailController1: TextEditingController(),
    ));
    emit(state.copyWith(
        eightythreeModelObj: state.eightythreeModelObj?.copyWith(
      eightythreeItemList: fillEightythreeItemList(),
    )));
  }
}
