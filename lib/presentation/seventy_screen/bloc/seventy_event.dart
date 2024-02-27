// ignore_for_file: must_be_immutable

part of 'seventy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventy widget is first created.
class SeventyInitialEvent extends SeventyEvent {
  @override
  List<Object?> get props => [];
}
