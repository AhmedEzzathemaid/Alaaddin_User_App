// ignore_for_file: must_be_immutable

part of 'twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwelveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twelve widget is first created.
class TwelveInitialEvent extends TwelveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends TwelveEvent {
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
