import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/s6_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/twentyfive_bottomsheet/models/twentyfive_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'twentyfive_event.dart';
part 'twentyfive_state.dart';

/// A bloc that manages the state of a Twentyfive according to the event that is dispatched to it.
class TwentyfiveBloc extends Bloc<TwentyfiveEvent, TwentyfiveState>
    with CodeAutoFill {
  TwentyfiveBloc(TwentyfiveState initialState) : super(initialState) {
    on<TwentyfiveInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<TwentyfiveState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<TwentyfiveState> emit,
  ) {
    List<S6ItemModel> newList =
        List<S6ItemModel>.from(state.twentyfiveModelObj!.s6ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        twentyfiveModelObj:
            state.twentyfiveModelObj?.copyWith(s6ItemList: newList)));
  }

  List<S6ItemModel> fillS6ItemList() {
    return List.generate(5, (index) => S6ItemModel());
  }

  _onInitialize(
    TwentyfiveInitialEvent event,
    Emitter<TwentyfiveState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
    emit(state.copyWith(
        twentyfiveModelObj: state.twentyfiveModelObj?.copyWith(
      s6ItemList: fillS6ItemList(),
    )));
  }
}
