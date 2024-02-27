// ignore_for_file: must_be_immutable

part of 'twentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twentyeight widget is first created.
class TwentyeightInitialEvent extends TwentyeightEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends TwentyeightEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends TwentyeightEvent {
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
