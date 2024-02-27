// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [twentysix_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TwentysixModel extends Equatable {TwentysixModel({this.radioList = const []}) {  }

List<String> radioList;

TwentysixModel copyWith({List<String>? radioList}) { return TwentysixModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
