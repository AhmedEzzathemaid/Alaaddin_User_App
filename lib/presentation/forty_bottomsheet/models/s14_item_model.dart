// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s14_item_widget] screen.
class S14ItemModel extends Equatable {S14ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S14ItemModel copyWith({String? s, bool? isSelected, }) { return S14ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
