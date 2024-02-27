// ignore_for_file: must_be_immutable

part of 'sixty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixty widget is first created.
class SixtyInitialEvent extends SixtyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SixtyEvent {
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
