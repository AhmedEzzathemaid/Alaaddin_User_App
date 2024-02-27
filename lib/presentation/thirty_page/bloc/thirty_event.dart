// ignore_for_file: must_be_immutable

part of 'thirty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirty widget is first created.
class ThirtyInitialEvent extends ThirtyEvent {
  @override
  List<Object?> get props => [];
}
