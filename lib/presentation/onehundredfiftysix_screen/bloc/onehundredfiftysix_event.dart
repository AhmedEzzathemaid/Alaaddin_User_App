// ignore_for_file: must_be_immutable

part of 'onehundredfiftysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftysix widget is first created.
class OnehundredfiftysixInitialEvent extends OnehundredfiftysixEvent {
  @override
  List<Object?> get props => [];
}
