// ignore_for_file: must_be_immutable

part of 'onehundredtwentyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwentyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwentyfive widget is first created.
class OnehundredtwentyfiveInitialEvent extends OnehundredtwentyfiveEvent {
  @override
  List<Object?> get props => [];
}
