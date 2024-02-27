// ignore_for_file: must_be_immutable

part of 'onehundredtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwo widget is first created.
class OnehundredtwoInitialEvent extends OnehundredtwoEvent {
  @override
  List<Object?> get props => [];
}
