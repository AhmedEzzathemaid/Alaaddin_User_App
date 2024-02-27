// ignore_for_file: must_be_immutable

part of 'fortynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fortynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fortynine widget is first created.
class FortynineInitialEvent extends FortynineEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends FortynineEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///event for OTP auto fill
class ChangeOTP1Event extends FortynineEvent {
  ChangeOTP1Event({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
