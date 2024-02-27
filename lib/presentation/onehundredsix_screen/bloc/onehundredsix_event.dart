// ignore_for_file: must_be_immutable

part of 'onehundredsix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsix widget is first created.
class OnehundredsixInitialEvent extends OnehundredsixEvent {
  @override
  List<Object?> get props => [];
}
