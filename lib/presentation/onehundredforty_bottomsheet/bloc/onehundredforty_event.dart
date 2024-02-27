// ignore_for_file: must_be_immutable

part of 'onehundredforty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredforty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredforty widget is first created.
class OnehundredfortyInitialEvent extends OnehundredfortyEvent {
  @override
  List<Object?> get props => [];
}
