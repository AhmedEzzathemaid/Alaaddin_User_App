import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtysix_screen/models/onehundredsixtysix_model.dart';
part 'onehundredsixtysix_event.dart';
part 'onehundredsixtysix_state.dart';

/// A bloc that manages the state of a Onehundredsixtysix according to the event that is dispatched to it.
class OnehundredsixtysixBloc
    extends Bloc<OnehundredsixtysixEvent, OnehundredsixtysixState> {
  OnehundredsixtysixBloc(OnehundredsixtysixState initialState)
      : super(initialState) {
    on<OnehundredsixtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredsixtysixInitialEvent event,
    Emitter<OnehundredsixtysixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
