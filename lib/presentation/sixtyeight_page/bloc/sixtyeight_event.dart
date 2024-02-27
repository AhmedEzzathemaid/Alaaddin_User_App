// ignore_for_file: must_be_immutable

part of 'sixtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixtyeight widget is first created.
class SixtyeightInitialEvent extends SixtyeightEvent {
  @override
  List<Object?> get props => [];
}
