// ignore_for_file: must_be_immutable

part of 'four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Four widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Four widget is first created.
class FourInitialEvent extends FourEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FourEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends FourEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
