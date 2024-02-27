// ignore_for_file: must_be_immutable

part of 'eighty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eighty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eighty widget is first created.
class EightyInitialEvent extends EightyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends EightyEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends EightyEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
