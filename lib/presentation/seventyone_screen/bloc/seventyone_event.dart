// ignore_for_file: must_be_immutable

part of 'seventyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventyone widget is first created.
class SeventyoneInitialEvent extends SeventyoneEvent {
  @override
  List<Object?> get props => [];
}
