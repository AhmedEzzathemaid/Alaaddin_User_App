// ignore_for_file: must_be_immutable

part of 'onehundredtwenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwenty widget is first created.
class OnehundredtwentyInitialEvent extends OnehundredtwentyEvent {
  @override
  List<Object?> get props => [];
}
