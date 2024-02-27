// ignore_for_file: must_be_immutable

part of 'onehundredfifty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfifty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfifty widget is first created.
class OnehundredfiftyInitialEvent extends OnehundredfiftyEvent {
  @override
  List<Object?> get props => [];
}
