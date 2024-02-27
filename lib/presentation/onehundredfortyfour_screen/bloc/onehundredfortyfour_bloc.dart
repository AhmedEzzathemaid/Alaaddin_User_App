import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:abdelhamed_s_application9/presentation/onehundredfortyfour_screen/models/onehundredfortyfour_model.dart';part 'onehundredfortyfour_event.dart';part 'onehundredfortyfour_state.dart';/// A bloc that manages the state of a Onehundredfortyfour according to the event that is dispatched to it.
class OnehundredfortyfourBloc extends Bloc<OnehundredfortyfourEvent, OnehundredfortyfourState> {OnehundredfortyfourBloc(OnehundredfortyfourState initialState) : super(initialState) { on<OnehundredfortyfourInitialEvent>(_onInitialize); }

_onInitialize(OnehundredfortyfourInitialEvent event, Emitter<OnehundredfortyfourState> emit, ) async  { emit(state.copyWith(descriptionController: TextEditingController())); } 
 }
