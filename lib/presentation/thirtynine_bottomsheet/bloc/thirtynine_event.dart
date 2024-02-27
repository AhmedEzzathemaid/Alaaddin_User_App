// ignore_for_file: must_be_immutable

part of 'thirtynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtynine widget is first created.
class ThirtynineInitialEvent extends ThirtynineEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ThirtynineEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ThirtynineEvent {
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
