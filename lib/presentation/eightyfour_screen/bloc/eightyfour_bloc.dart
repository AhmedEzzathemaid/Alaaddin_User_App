import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/allthebest_item_model.dart';
import '../models/zipcode_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/eightyfour_screen/models/eightyfour_model.dart';
part 'eightyfour_event.dart';
part 'eightyfour_state.dart';

/// A bloc that manages the state of a Eightyfour according to the event that is dispatched to it.
class EightyfourBloc extends Bloc<EightyfourEvent, EightyfourState> {
  EightyfourBloc(EightyfourState initialState) : super(initialState) {
    on<EightyfourInitialEvent>(_onInitialize);
  }

  List<AllthebestItemModel> fillAllthebestItemList() {
    return [
      AllthebestItemModel(allTheBest: ImageConstant.imgAllTheBest64x101),
      AllthebestItemModel(allTheBest: ImageConstant.imgAllTheBest1),
      AllthebestItemModel(allTheBest: ImageConstant.imgAllTheBest2),
      AllthebestItemModel(allTheBest: ImageConstant.imgAllTheBest3)
    ];
  }

  List<ZipcodeItemModel> fillZipcodeItemList() {
    return [
      ZipcodeItemModel(zipcode: "2000"),
      ZipcodeItemModel(zipcode: "5000"),
      ZipcodeItemModel(zipcode: "8000"),
      ZipcodeItemModel(zipcode: "12000"),
      ZipcodeItemModel(zipcode: "12000")
    ];
  }

  _onInitialize(
    EightyfourInitialEvent event,
    Emitter<EightyfourState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      emailController1: TextEditingController(),
    ));
    emit(state.copyWith(
        eightyfourModelObj: state.eightyfourModelObj?.copyWith(
      allthebestItemList: fillAllthebestItemList(),
      zipcodeItemList: fillZipcodeItemList(),
    )));
  }
}
