// ignore_for_file: must_be_immutable

part of 'fortyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fortyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fortyeight widget is first created.
class FortyeightInitialEvent extends FortyeightEvent {
  @override
  List<Object?> get props => [];
}
