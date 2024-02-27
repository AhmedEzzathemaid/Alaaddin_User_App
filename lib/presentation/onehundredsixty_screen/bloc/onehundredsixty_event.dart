// ignore_for_file: must_be_immutable

part of 'onehundredsixty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixty widget is first created.
class OnehundredsixtyInitialEvent extends OnehundredsixtyEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OnehundredsixtyEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
