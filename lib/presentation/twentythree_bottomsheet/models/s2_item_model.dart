// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s2_item_widget] screen.
class S2ItemModel extends Equatable {S2ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S2ItemModel copyWith({String? s, bool? isSelected, }) { return S2ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
