// ignore_for_file: must_be_immutable

part of 'onehundredsixtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixtyone widget is first created.
class OnehundredsixtyoneInitialEvent extends OnehundredsixtyoneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends OnehundredsixtyoneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends OnehundredsixtyoneEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
