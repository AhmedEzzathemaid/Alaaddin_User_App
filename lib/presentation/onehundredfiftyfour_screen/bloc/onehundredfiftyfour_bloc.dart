import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy6_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftyfour_screen/models/onehundredfiftyfour_model.dart';
part 'onehundredfiftyfour_event.dart';
part 'onehundredfiftyfour_state.dart';

/// A bloc that manages the state of a Onehundredfiftyfour according to the event that is dispatched to it.
class OnehundredfiftyfourBloc
    extends Bloc<OnehundredfiftyfourEvent, OnehundredfiftyfourState> {
  OnehundredfiftyfourBloc(OnehundredfiftyfourState initialState)
      : super(initialState) {
    on<OnehundredfiftyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiftyfourInitialEvent event,
    Emitter<OnehundredfiftyfourState> emit,
  ) async {
    emit(state.copyWith(
        onehundredfiftyfourModelObj:
            state.onehundredfiftyfourModelObj?.copyWith(
      viewhierarchy6ItemList: fillViewhierarchy6ItemList(),
    )));
  }

  List<Viewhierarchy6ItemModel> fillViewhierarchy6ItemList() {
    return [
      Viewhierarchy6ItemModel(
          dateText: "22/01/2023 - 09:30 PM",
          cancelText: "How can I cancel my order?",
          loremText:
              "Lorem Ipsum is simply text of the printing typesetting industry Lorem Ipsum",
          numberText: "2")
    ];
  }
}
