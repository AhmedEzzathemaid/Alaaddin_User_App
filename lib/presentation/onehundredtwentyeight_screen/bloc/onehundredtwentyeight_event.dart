// ignore_for_file: must_be_immutable

part of 'onehundredtwentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwentyeight widget is first created.
class OnehundredtwentyeightInitialEvent extends OnehundredtwentyeightEvent {
  @override
  List<Object?> get props => [];
}
