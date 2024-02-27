// ignore_for_file: must_be_immutable

part of 'onehundredthirtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtyone widget is first created.
class OnehundredthirtyoneInitialEvent extends OnehundredthirtyoneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OnehundredthirtyoneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
