// ignore_for_file: must_be_immutable

part of 'thirtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtytwo widget is first created.
class ThirtytwoInitialEvent extends ThirtytwoEvent {
  @override
  List<Object?> get props => [];
}
