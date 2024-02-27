// ignore_for_file: must_be_immutable

part of 'onehundredsixtyseven_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnehundredsixtysevenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtysevenTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OnehundredsixtysevenTabContainer widget is first created.
class OnehundredsixtysevenTabContainerInitialEvent
    extends OnehundredsixtysevenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
