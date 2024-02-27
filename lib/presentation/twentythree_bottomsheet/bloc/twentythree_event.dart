// ignore_for_file: must_be_immutable

part of 'twentythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twentythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twentythree widget is first created.
class TwentythreeInitialEvent extends TwentythreeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends TwentythreeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends TwentythreeEvent {
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
