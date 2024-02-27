// ignore_for_file: must_be_immutable

part of 'eightyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eightyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eightyeight widget is first created.
class EightyeightInitialEvent extends EightyeightEvent {
  @override
  List<Object?> get props => [];
}
