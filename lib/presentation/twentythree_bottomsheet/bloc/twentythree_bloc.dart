import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/s2_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/twentythree_bottomsheet/models/twentythree_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'twentythree_event.dart';
part 'twentythree_state.dart';

/// A bloc that manages the state of a Twentythree according to the event that is dispatched to it.
class TwentythreeBloc extends Bloc<TwentythreeEvent, TwentythreeState>
    with CodeAutoFill {
  TwentythreeBloc(TwentythreeState initialState) : super(initialState) {
    on<TwentythreeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<TwentythreeState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<TwentythreeState> emit,
  ) {
    List<S2ItemModel> newList =
        List<S2ItemModel>.from(state.twentythreeModelObj!.s2ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        twentythreeModelObj:
            state.twentythreeModelObj?.copyWith(s2ItemList: newList)));
  }

  List<S2ItemModel> fillS2ItemList() {
    return List.generate(5, (index) => S2ItemModel());
  }

  _onInitialize(
    TwentythreeInitialEvent event,
    Emitter<TwentythreeState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
    emit(state.copyWith(
        twentythreeModelObj: state.twentythreeModelObj?.copyWith(
      s2ItemList: fillS2ItemList(),
    )));
  }
}
