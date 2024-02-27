// ignore_for_file: must_be_immutable

part of 'eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ElevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eleven widget is first created.
class ElevenInitialEvent extends ElevenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ElevenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends ElevenEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends ElevenEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing country code
class ChangeCountryEvent extends ElevenEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing country code
class ChangeCountry1Event extends ElevenEvent {
  ChangeCountry1Event({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
