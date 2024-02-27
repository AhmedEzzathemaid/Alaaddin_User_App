// ignore_for_file: must_be_immutable

part of 'ninetynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninetynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninetynine widget is first created.
class NinetynineInitialEvent extends NinetynineEvent {
  @override
  List<Object?> get props => [];
}
