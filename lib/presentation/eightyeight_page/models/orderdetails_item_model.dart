import '../../../core/app_export.dart';/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {OrderdetailsItemModel({this.orderNumber, this.productCount, this.totalAmount, this.orderDateTime, this.productImage, this.orderScheduleTitle, this.orderScheduleDate, this.timerHours, this.timerDays, this.timerMinutes, this.h, this.fifteen, this.min, this.id, }) { orderNumber = orderNumber  ?? "#52156564320";productCount = productCount  ?? "products: 3";totalAmount = totalAmount  ?? "Total: 120.0 YER";orderDateTime = orderDateTime  ?? "22/01/2023 - 09:30 PM";productImage = productImage  ?? ImageConstant.imgCalendar11;orderScheduleTitle = orderScheduleTitle  ?? "Order schedule";orderScheduleDate = orderScheduleDate  ?? "Sun,07 May,2023";timerHours = timerHours  ?? "2";timerDays = timerDays  ?? "D";timerMinutes = timerMinutes  ?? "11";h = h  ?? "H";fifteen = fifteen  ?? "15";min = min  ?? "MIN";id = id  ?? ""; }

String? orderNumber;

String? productCount;

String? totalAmount;

String? orderDateTime;

String? productImage;

String? orderScheduleTitle;

String? orderScheduleDate;

String? timerHours;

String? timerDays;

String? timerMinutes;

String? h;

String? fifteen;

String? min;

String? id;

 }
