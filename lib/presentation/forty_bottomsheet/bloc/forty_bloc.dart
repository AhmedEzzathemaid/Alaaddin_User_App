import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/s14_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/forty_bottomsheet/models/forty_model.dart';
part 'forty_event.dart';
part 'forty_state.dart';

/// A bloc that manages the state of a Forty according to the event that is dispatched to it.
class FortyBloc extends Bloc<FortyEvent, FortyState> {
  FortyBloc(FortyState initialState) : super(initialState) {
    on<FortyInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FortyState> emit,
  ) {
    List<S14ItemModel> newList =
        List<S14ItemModel>.from(state.fortyModelObj!.s14ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        fortyModelObj: state.fortyModelObj?.copyWith(s14ItemList: newList)));
  }

  List<S14ItemModel> fillS14ItemList() {
    return List.generate(5, (index) => S14ItemModel());
  }

  _onInitialize(
    FortyInitialEvent event,
    Emitter<FortyState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        fortyModelObj: state.fortyModelObj?.copyWith(
      s14ItemList: fillS14ItemList(),
    )));
  }
}
