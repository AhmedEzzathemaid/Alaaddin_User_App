// ignore_for_file: must_be_immutable

part of 'onehundredthirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirteen widget is first created.
class OnehundredthirteenInitialEvent extends OnehundredthirteenEvent {
  @override
  List<Object?> get props => [];
}
