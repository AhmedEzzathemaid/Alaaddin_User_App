// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [onehundredtwentysix_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredtwentysixModel extends Equatable {OnehundredtwentysixModel({this.radioList = const []}) {  }

List<String> radioList;

OnehundredtwentysixModel copyWith({List<String>? radioList}) { return OnehundredtwentysixModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
