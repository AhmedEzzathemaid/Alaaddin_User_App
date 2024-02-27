// ignore_for_file: must_be_immutable

part of 'onehundredfiftyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftyeight widget is first created.
class OnehundredfiftyeightInitialEvent extends OnehundredfiftyeightEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends OnehundredfiftyeightEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends OnehundredfiftyeightEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends OnehundredfiftyeightEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
