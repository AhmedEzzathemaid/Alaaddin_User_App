// ignore_for_file: must_be_immutable

part of 'onehundredfiftyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftyone widget is first created.
class OnehundredfiftyoneInitialEvent extends OnehundredfiftyoneEvent {
  @override
  List<Object?> get props => [];
}
