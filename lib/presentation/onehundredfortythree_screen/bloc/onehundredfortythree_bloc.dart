import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/promotion_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfortythree_screen/models/onehundredfortythree_model.dart';
part 'onehundredfortythree_event.dart';
part 'onehundredfortythree_state.dart';

/// A bloc that manages the state of a Onehundredfortythree according to the event that is dispatched to it.
class OnehundredfortythreeBloc
    extends Bloc<OnehundredfortythreeEvent, OnehundredfortythreeState> {
  OnehundredfortythreeBloc(OnehundredfortythreeState initialState)
      : super(initialState) {
    on<OnehundredfortythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfortythreeInitialEvent event,
    Emitter<OnehundredfortythreeState> emit,
  ) async {
    emit(state.copyWith(
        onehundredfortythreeModelObj:
            state.onehundredfortythreeModelObj?.copyWith(
      promotionItemList: fillPromotionItemList(),
    )));
  }

  List<PromotionItemModel> fillPromotionItemList() {
    return [
      PromotionItemModel(
          text2: "OFF",
          text3: "For orders over 150 YER",
          text4: "Code : 5241Wq61",
          text5: "Valid until : 30/05/2022",
          text6: "Number of usage : 3"),
      PromotionItemModel(
          text2: "OFF",
          text3: "For all products",
          text4: "Code : 5241Wq61",
          text5: "Valid until : 30/05/2022",
          text6: "Number of usage : 1"),
      PromotionItemModel(
          text2: "OFF",
          text3: "For on full order",
          text4: "Code : 5241Wq61",
          text5: "Valid until : 30/05/2022",
          text6: "Number of usage : 2")
    ];
  }
}
