// ignore_for_file: must_be_immutable

part of 'forty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Forty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Forty widget is first created.
class FortyInitialEvent extends FortyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FortyEvent {
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
