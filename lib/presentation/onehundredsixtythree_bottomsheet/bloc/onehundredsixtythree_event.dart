// ignore_for_file: must_be_immutable

part of 'onehundredsixtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixtythree widget is first created.
class OnehundredsixtythreeInitialEvent extends OnehundredsixtythreeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OnehundredsixtythreeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
