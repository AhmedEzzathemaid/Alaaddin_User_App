import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/arrowturnbackwardround_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/twelve_screen/models/twelve_model.dart';
part 'twelve_event.dart';
part 'twelve_state.dart';

/// A bloc that manages the state of a Twelve according to the event that is dispatched to it.
class TwelveBloc extends Bloc<TwelveEvent, TwelveState> {
  TwelveBloc(TwelveState initialState) : super(initialState) {
    on<TwelveInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<TwelveState> emit,
  ) {
    List<ArrowturnbackwardroundItemModel> newList =
        List<ArrowturnbackwardroundItemModel>.from(
            state.twelveModelObj!.arrowturnbackwardroundItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        twelveModelObj: state.twelveModelObj
            ?.copyWith(arrowturnbackwardroundItemList: newList)));
  }

  List<ArrowturnbackwardroundItemModel> fillArrowturnbackwardroundItemList() {
    return List.generate(4, (index) => ArrowturnbackwardroundItemModel());
  }

  _onInitialize(
    TwelveInitialEvent event,
    Emitter<TwelveState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        twelveModelObj: state.twelveModelObj?.copyWith(
      arrowturnbackwardroundItemList: fillArrowturnbackwardroundItemList(),
    )));
  }
}
