// ignore_for_file: must_be_immutable

part of 'twentyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twentyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twentyfour widget is first created.
class TwentyfourInitialEvent extends TwentyfourEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends TwentyfourEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends TwentyfourEvent {
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
