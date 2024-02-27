// ignore_for_file: must_be_immutable

part of 'onehundredsixtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixtyeight widget is first created.
class OnehundredsixtyeightInitialEvent extends OnehundredsixtyeightEvent {
  @override
  List<Object?> get props => [];
}
