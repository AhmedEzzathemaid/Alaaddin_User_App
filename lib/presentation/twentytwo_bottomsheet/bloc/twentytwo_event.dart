// ignore_for_file: must_be_immutable

part of 'twentytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twentytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twentytwo widget is first created.
class TwentytwoInitialEvent extends TwentytwoEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends TwentytwoEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends TwentytwoEvent {
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
