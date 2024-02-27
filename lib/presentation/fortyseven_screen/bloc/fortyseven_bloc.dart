import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortyseven_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fortyseven_screen/models/fortyseven_model.dart';
part 'fortyseven_event.dart';
part 'fortyseven_state.dart';

/// A bloc that manages the state of a Fortyseven according to the event that is dispatched to it.
class FortysevenBloc extends Bloc<FortysevenEvent, FortysevenState> {
  FortysevenBloc(FortysevenState initialState) : super(initialState) {
    on<FortysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FortysevenInitialEvent event,
    Emitter<FortysevenState> emit,
  ) async {
    emit(state.copyWith(
        fortysevenModelObj: state.fortysevenModelObj?.copyWith(
      fortysevenItemList: fillFortysevenItemList(),
    )));
  }

  List<FortysevenItemModel> fillFortysevenItemList() {
    return [
      FortysevenItemModel(rectangle: ImageConstant.imgRectangle22418),
      FortysevenItemModel(rectangle: ImageConstant.imgRectangle22419)
    ];
  }
}
