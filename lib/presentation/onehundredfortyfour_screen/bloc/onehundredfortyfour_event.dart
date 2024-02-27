// ignore_for_file: must_be_immutable

part of 'onehundredfortyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortyfour widget is first created.
class OnehundredfortyfourInitialEvent extends OnehundredfortyfourEvent {
  @override
  List<Object?> get props => [];
}
