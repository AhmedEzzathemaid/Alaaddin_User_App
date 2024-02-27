// ignore_for_file: must_be_immutable

part of 'eightynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eightynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eightynine widget is first created.
class EightynineInitialEvent extends EightynineEvent {
  @override
  List<Object?> get props => [];
}
