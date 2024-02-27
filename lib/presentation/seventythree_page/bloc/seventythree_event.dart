// ignore_for_file: must_be_immutable

part of 'seventythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventythree widget is first created.
class SeventythreeInitialEvent extends SeventythreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends SeventythreeEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
