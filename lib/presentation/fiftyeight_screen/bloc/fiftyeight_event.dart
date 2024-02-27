// ignore_for_file: must_be_immutable

part of 'fiftyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftyeight widget is first created.
class FiftyeightInitialEvent extends FiftyeightEvent {
  @override
  List<Object?> get props => [];
}
