// ignore_for_file: must_be_immutable

part of 'five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Five widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Five widget is first created.
class FiveInitialEvent extends FiveEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FiveEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends FiveEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends FiveEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing country code
class ChangeCountryEvent extends FiveEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing country code
class ChangeCountry1Event extends FiveEvent {
  ChangeCountry1Event({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
