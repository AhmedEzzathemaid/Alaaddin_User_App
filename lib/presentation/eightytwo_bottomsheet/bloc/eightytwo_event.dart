// ignore_for_file: must_be_immutable

part of 'eightytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eightytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eightytwo widget is first created.
class EightytwoInitialEvent extends EightytwoEvent {
  @override
  List<Object?> get props => [];
}
