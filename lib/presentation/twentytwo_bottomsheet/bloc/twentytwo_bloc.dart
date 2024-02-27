import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/s_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/twentytwo_bottomsheet/models/twentytwo_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'twentytwo_event.dart';
part 'twentytwo_state.dart';

/// A bloc that manages the state of a Twentytwo according to the event that is dispatched to it.
class TwentytwoBloc extends Bloc<TwentytwoEvent, TwentytwoState>
    with CodeAutoFill {
  TwentytwoBloc(TwentytwoState initialState) : super(initialState) {
    on<TwentytwoInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<TwentytwoState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<TwentytwoState> emit,
  ) {
    List<SItemModel> newList =
        List<SItemModel>.from(state.twentytwoModelObj!.sItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        twentytwoModelObj:
            state.twentytwoModelObj?.copyWith(sItemList: newList)));
  }

  List<SItemModel> fillSItemList() {
    return List.generate(5, (index) => SItemModel());
  }

  _onInitialize(
    TwentytwoInitialEvent event,
    Emitter<TwentytwoState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
    emit(state.copyWith(
        twentytwoModelObj: state.twentytwoModelObj?.copyWith(
      sItemList: fillSItemList(),
    )));
  }
}
