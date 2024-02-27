// ignore_for_file: must_be_immutable

part of 'onehundredsixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixteen widget is first created.
class OnehundredsixteenInitialEvent extends OnehundredsixteenEvent {
  @override
  List<Object?> get props => [];
}
