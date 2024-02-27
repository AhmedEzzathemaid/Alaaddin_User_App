// ignore_for_file: must_be_immutable

part of 'seventynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventynine widget is first created.
class SeventynineInitialEvent extends SeventynineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SeventynineEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SeventynineEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
