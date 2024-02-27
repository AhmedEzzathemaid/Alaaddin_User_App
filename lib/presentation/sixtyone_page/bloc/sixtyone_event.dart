// ignore_for_file: must_be_immutable

part of 'sixtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixtyone widget is first created.
class SixtyoneInitialEvent extends SixtyoneEvent {
  @override
  List<Object?> get props => [];
}
