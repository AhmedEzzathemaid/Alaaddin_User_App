// ignore_for_file: must_be_immutable

part of 'onehundredone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredone widget is first created.
class OnehundredoneInitialEvent extends OnehundredoneEvent {
  @override
  List<Object?> get props => [];
}
