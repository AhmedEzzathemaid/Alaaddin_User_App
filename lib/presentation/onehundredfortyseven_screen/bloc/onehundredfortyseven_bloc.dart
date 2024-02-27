import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy5_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfortyseven_screen/models/onehundredfortyseven_model.dart';
part 'onehundredfortyseven_event.dart';
part 'onehundredfortyseven_state.dart';

/// A bloc that manages the state of a Onehundredfortyseven according to the event that is dispatched to it.
class OnehundredfortysevenBloc
    extends Bloc<OnehundredfortysevenEvent, OnehundredfortysevenState> {
  OnehundredfortysevenBloc(OnehundredfortysevenState initialState)
      : super(initialState) {
    on<OnehundredfortysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfortysevenInitialEvent event,
    Emitter<OnehundredfortysevenState> emit,
  ) async {
    emit(state.copyWith(
        onehundredfortysevenModelObj:
            state.onehundredfortysevenModelObj?.copyWith(
      viewhierarchy5ItemList: fillViewhierarchy5ItemList(),
    )));
  }

  List<Viewhierarchy5ItemModel> fillViewhierarchy5ItemList() {
    return [
      Viewhierarchy5ItemModel(
          homeText: "Home",
          addressText: "St7, Shabwa, Dar Muhaimud, Yemen",
          phoneNumberText: "+20 123 456 789"),
      Viewhierarchy5ItemModel(
          homeText: "Work",
          addressText: "St7, Shabwa, Dar Muhaimud, Yemen",
          phoneNumberText: "+20 123 456 789")
    ];
  }
}
