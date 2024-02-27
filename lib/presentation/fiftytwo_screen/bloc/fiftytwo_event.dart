// ignore_for_file: must_be_immutable

part of 'fiftytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftytwo widget is first created.
class FiftytwoInitialEvent extends FiftytwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FiftytwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FiftytwoEvent {
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
