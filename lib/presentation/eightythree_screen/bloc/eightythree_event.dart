// ignore_for_file: must_be_immutable

part of 'eightythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eightythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eightythree widget is first created.
class EightythreeInitialEvent extends EightythreeEvent {
  @override
  List<Object?> get props => [];
}
