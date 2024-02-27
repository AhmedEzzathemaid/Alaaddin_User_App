// ignore_for_file: must_be_immutable

part of 'fortysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fortysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fortysix widget is first created.
class FortysixInitialEvent extends FortysixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends FortysixEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FortysixEvent {
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
class ChangeSwitch1Event extends FortysixEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
