// ignore_for_file: must_be_immutable

part of 'thirtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtyone widget is first created.
class ThirtyoneInitialEvent extends ThirtyoneEvent {
  @override
  List<Object?> get props => [];
}
