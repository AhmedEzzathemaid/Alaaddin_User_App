import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/ten_screen/models/ten_model.dart';
part 'ten_event.dart';
part 'ten_state.dart';

/// A bloc that manages the state of a Ten according to the event that is dispatched to it.
class TenBloc extends Bloc<TenEvent, TenState> {
  TenBloc(TenState initialState) : super(initialState) {
    on<TenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TenInitialEvent event,
    Emitter<TenState> emit,
  ) async {
    emit(state.copyWith(
        tenModelObj: state.tenModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          defaultAddress: "Default Address",
          addressText: "St7, Shabwa, Dar Muhaimud, Yemen")
    ];
  }
}
