import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/s4_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/twentyfour_bottomsheet/models/twentyfour_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'twentyfour_event.dart';
part 'twentyfour_state.dart';

/// A bloc that manages the state of a Twentyfour according to the event that is dispatched to it.
class TwentyfourBloc extends Bloc<TwentyfourEvent, TwentyfourState>
    with CodeAutoFill {
  TwentyfourBloc(TwentyfourState initialState) : super(initialState) {
    on<TwentyfourInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<TwentyfourState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<TwentyfourState> emit,
  ) {
    List<S4ItemModel> newList =
        List<S4ItemModel>.from(state.twentyfourModelObj!.s4ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        twentyfourModelObj:
            state.twentyfourModelObj?.copyWith(s4ItemList: newList)));
  }

  List<S4ItemModel> fillS4ItemList() {
    return List.generate(5, (index) => S4ItemModel());
  }

  _onInitialize(
    TwentyfourInitialEvent event,
    Emitter<TwentyfourState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
    emit(state.copyWith(
        twentyfourModelObj: state.twentyfourModelObj?.copyWith(
      s4ItemList: fillS4ItemList(),
    )));
  }
}
