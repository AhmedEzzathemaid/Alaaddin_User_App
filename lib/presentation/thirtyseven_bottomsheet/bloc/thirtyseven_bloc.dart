import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/s10_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/thirtyseven_bottomsheet/models/thirtyseven_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'thirtyseven_event.dart';
part 'thirtyseven_state.dart';

/// A bloc that manages the state of a Thirtyseven according to the event that is dispatched to it.
class ThirtysevenBloc extends Bloc<ThirtysevenEvent, ThirtysevenState>
    with CodeAutoFill {
  ThirtysevenBloc(ThirtysevenState initialState) : super(initialState) {
    on<ThirtysevenInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<ThirtysevenState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ThirtysevenState> emit,
  ) {
    List<S10ItemModel> newList =
        List<S10ItemModel>.from(state.thirtysevenModelObj!.s10ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        thirtysevenModelObj:
            state.thirtysevenModelObj?.copyWith(s10ItemList: newList)));
  }

  List<S10ItemModel> fillS10ItemList() {
    return List.generate(5, (index) => S10ItemModel());
  }

  _onInitialize(
    ThirtysevenInitialEvent event,
    Emitter<ThirtysevenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      otpController: TextEditingController(),
    ));
    listenForCode();
    emit(state.copyWith(
        thirtysevenModelObj: state.thirtysevenModelObj?.copyWith(
      s10ItemList: fillS10ItemList(),
    )));
  }
}
