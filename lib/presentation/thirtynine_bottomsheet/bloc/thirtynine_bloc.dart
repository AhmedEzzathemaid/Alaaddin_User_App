import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/s12_item_model.dart';import 'package:abdelhamed_s_application9/presentation/thirtynine_bottomsheet/models/thirtynine_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'thirtynine_event.dart';part 'thirtynine_state.dart';/// A bloc that manages the state of a Thirtynine according to the event that is dispatched to it.
class ThirtynineBloc extends Bloc<ThirtynineEvent, ThirtynineState> with  CodeAutoFill {ThirtynineBloc(ThirtynineState initialState) : super(initialState) { on<ThirtynineInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); on<UpdateChipViewEvent>(_updateChipView); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ThirtynineState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_updateChipView(UpdateChipViewEvent event, Emitter<ThirtynineState> emit, ) { List<S12ItemModel> newList = List<S12ItemModel>.from(state.thirtynineModelObj!.s12ItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(thirtynineModelObj: state.thirtynineModelObj?.copyWith(s12ItemList: newList))); } 
List<S12ItemModel> fillS12ItemList() { return List.generate(5, (index) => S12ItemModel()); } 
_onInitialize(ThirtynineInitialEvent event, Emitter<ThirtynineState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController(), otpController: TextEditingController())); listenForCode(); emit(state.copyWith(thirtynineModelObj: state.thirtynineModelObj?.copyWith(s12ItemList: fillS12ItemList()))); } 
 }
