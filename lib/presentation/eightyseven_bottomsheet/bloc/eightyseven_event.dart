// ignore_for_file: must_be_immutable

part of 'eightyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eightyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eightyseven widget is first created.
class EightysevenInitialEvent extends EightysevenEvent {
  @override
  List<Object?> get props => [];
}
