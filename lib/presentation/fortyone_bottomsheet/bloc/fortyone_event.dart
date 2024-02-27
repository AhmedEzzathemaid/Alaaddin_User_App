// ignore_for_file: must_be_immutable

part of 'fortyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fortyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fortyone widget is first created.
class FortyoneInitialEvent extends FortyoneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends FortyoneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
