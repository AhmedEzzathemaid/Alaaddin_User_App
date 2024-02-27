// ignore_for_file: must_be_immutable

part of 'seventyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventyeight widget is first created.
class SeventyeightInitialEvent extends SeventyeightEvent {
  @override
  List<Object?> get props => [];
}
