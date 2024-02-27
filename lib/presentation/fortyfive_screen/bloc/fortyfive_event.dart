// ignore_for_file: must_be_immutable

part of 'fortyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fortyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fortyfive widget is first created.
class FortyfiveInitialEvent extends FortyfiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends FortyfiveEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FortyfiveEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends FortyfiveEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
