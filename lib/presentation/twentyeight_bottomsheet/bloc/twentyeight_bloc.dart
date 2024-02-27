import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/s8_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/twentyeight_bottomsheet/models/twentyeight_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'twentyeight_event.dart';
part 'twentyeight_state.dart';

/// A bloc that manages the state of a Twentyeight according to the event that is dispatched to it.
class TwentyeightBloc extends Bloc<TwentyeightEvent, TwentyeightState>
    with CodeAutoFill {
  TwentyeightBloc(TwentyeightState initialState) : super(initialState) {
    on<TwentyeightInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<TwentyeightState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<TwentyeightState> emit,
  ) {
    List<S8ItemModel> newList =
        List<S8ItemModel>.from(state.twentyeightModelObj!.s8ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        twentyeightModelObj:
            state.twentyeightModelObj?.copyWith(s8ItemList: newList)));
  }

  List<S8ItemModel> fillS8ItemList() {
    return List.generate(5, (index) => S8ItemModel());
  }

  _onInitialize(
    TwentyeightInitialEvent event,
    Emitter<TwentyeightState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
    emit(state.copyWith(
        twentyeightModelObj: state.twentyeightModelObj?.copyWith(
      s8ItemList: fillS8ItemList(),
    )));
  }
}
