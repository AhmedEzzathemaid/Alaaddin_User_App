// ignore_for_file: must_be_immutable

part of 'eightyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eightyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eightyfive widget is first created.
class EightyfiveInitialEvent extends EightyfiveEvent {
  @override
  List<Object?> get props => [];
}
