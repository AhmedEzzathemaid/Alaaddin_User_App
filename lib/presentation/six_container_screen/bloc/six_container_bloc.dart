import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:abdelhamed_s_application9/presentation/six_container_screen/models/six_container_model.dart';part 'six_container_event.dart';part 'six_container_state.dart';/// A bloc that manages the state of a SixContainer according to the event that is dispatched to it.
class SixContainerBloc extends Bloc<SixContainerEvent, SixContainerState> {SixContainerBloc(SixContainerState initialState) : super(initialState) { on<SixContainerInitialEvent>(_onInitialize); }

_onInitialize(SixContainerInitialEvent event, Emitter<SixContainerState> emit, ) async  {  } 
 }
