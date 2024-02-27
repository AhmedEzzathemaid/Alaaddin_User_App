// ignore_for_file: must_be_immutable

part of 'thirtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtyseven widget is first created.
class ThirtysevenInitialEvent extends ThirtysevenEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ThirtysevenEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ThirtysevenEvent {
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
