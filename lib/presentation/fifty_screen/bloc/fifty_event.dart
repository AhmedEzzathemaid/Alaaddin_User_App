// ignore_for_file: must_be_immutable

part of 'fifty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fifty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fifty widget is first created.
class FiftyInitialEvent extends FiftyEvent {
  @override
  List<Object?> get props => [];
}
