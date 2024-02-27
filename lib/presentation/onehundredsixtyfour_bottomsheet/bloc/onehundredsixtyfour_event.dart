// ignore_for_file: must_be_immutable

part of 'onehundredsixtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixtyfour widget is first created.
class OnehundredsixtyfourInitialEvent extends OnehundredsixtyfourEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OnehundredsixtyfourEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
