// ignore_for_file: must_be_immutable

part of 'thirtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtyeight widget is first created.
class ThirtyeightInitialEvent extends ThirtyeightEvent {
  @override
  List<Object?> get props => [];
}
