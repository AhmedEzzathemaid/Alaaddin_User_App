// ignore_for_file: must_be_immutable

part of 'onehundredthirty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirty widget is first created.
class OnehundredthirtyInitialEvent extends OnehundredthirtyEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OnehundredthirtyEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
