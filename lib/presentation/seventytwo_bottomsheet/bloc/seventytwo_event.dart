// ignore_for_file: must_be_immutable

part of 'seventytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventytwo widget is first created.
class SeventytwoInitialEvent extends SeventytwoEvent {
  @override
  List<Object?> get props => [];
}
