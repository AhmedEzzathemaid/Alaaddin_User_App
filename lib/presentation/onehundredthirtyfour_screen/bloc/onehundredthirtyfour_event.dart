// ignore_for_file: must_be_immutable

part of 'onehundredthirtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtyfour widget is first created.
class OnehundredthirtyfourInitialEvent extends OnehundredthirtyfourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends OnehundredthirtyfourEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends OnehundredthirtyfourEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent2 extends OnehundredthirtyfourEvent {
  ChangePasswordVisibilityEvent2({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
