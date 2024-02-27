// ignore_for_file: must_be_immutable

part of 'twentyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twentyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twentyfive widget is first created.
class TwentyfiveInitialEvent extends TwentyfiveEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends TwentyfiveEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends TwentyfiveEvent {
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
