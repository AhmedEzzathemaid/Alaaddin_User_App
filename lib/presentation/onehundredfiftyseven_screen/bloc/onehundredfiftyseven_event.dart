// ignore_for_file: must_be_immutable

part of 'onehundredfiftyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftyseven widget is first created.
class OnehundredfiftysevenInitialEvent extends OnehundredfiftysevenEvent {
  @override
  List<Object?> get props => [];
}
