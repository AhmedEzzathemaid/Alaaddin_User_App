import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/button_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fortyeight_screen/models/fortyeight_model.dart';
part 'fortyeight_event.dart';
part 'fortyeight_state.dart';

/// A bloc that manages the state of a Fortyeight according to the event that is dispatched to it.
class FortyeightBloc extends Bloc<FortyeightEvent, FortyeightState> {
  FortyeightBloc(FortyeightState initialState) : super(initialState) {
    on<FortyeightInitialEvent>(_onInitialize);
  }

  List<ButtonItemModel> fillButtonItemList() {
    return [ButtonItemModel(image: ImageConstant.imgRectangle2196508x347)];
  }

  _onInitialize(
    FortyeightInitialEvent event,
    Emitter<FortyeightState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        fortyeightModelObj: state.fortyeightModelObj?.copyWith(
      buttonItemList: fillButtonItemList(),
    )));
  }
}
