// ignore_for_file: must_be_immutable

part of 'onehundredfortynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortynine widget is first created.
class OnehundredfortynineInitialEvent extends OnehundredfortynineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends OnehundredfortynineEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
