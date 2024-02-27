import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderconfirmation_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftyseven_screen/models/onehundredfiftyseven_model.dart';
part 'onehundredfiftyseven_event.dart';
part 'onehundredfiftyseven_state.dart';

/// A bloc that manages the state of a Onehundredfiftyseven according to the event that is dispatched to it.
class OnehundredfiftysevenBloc
    extends Bloc<OnehundredfiftysevenEvent, OnehundredfiftysevenState> {
  OnehundredfiftysevenBloc(OnehundredfiftysevenState initialState)
      : super(initialState) {
    on<OnehundredfiftysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiftysevenInitialEvent event,
    Emitter<OnehundredfiftysevenState> emit,
  ) async {
    emit(state.copyWith(
        onehundredfiftysevenModelObj:
            state.onehundredfiftysevenModelObj?.copyWith(
      orderconfirmationItemList: fillOrderconfirmationItemList(),
    )));
  }

  List<OrderconfirmationItemModel> fillOrderconfirmationItemList() {
    return [
      OrderconfirmationItemModel(
          orderNumber: "#521452151",
          orderStatus: "Your order has been approved",
          orderDateTime: "20/05/2023 - 09:00PM",
          orderImage: ImageConstant.imgFiRrTrash),
      OrderconfirmationItemModel(
          orderNumber: "Canceled product",
          orderStatus:
              "The money for the canceled product has been added to your wallet",
          orderDateTime: "20/05/2023 - 09:00PM",
          orderImage: ImageConstant.imgFiRrTrash)
    ];
  }
}
