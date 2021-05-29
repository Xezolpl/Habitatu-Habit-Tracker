import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:habitatu/core/presentation/constants.dart';
import 'package:habitatu/core/presentation/widgets/styled_card.dart';
import 'package:habitatu/core/tools/date_formater.dart';
import 'package:habitatu/habits/data/models/habit.dart';
import 'package:sizer/sizer.dart';

class HabitWidget extends StatefulWidget {
  final Habit habit;
  const HabitWidget(this.habit, {Key? key}) : super(key: key);

  @override
  _HabitWidgetState createState() => _HabitWidgetState();
}

class _HabitWidgetState extends State<HabitWidget> {
  bool isExpanded = false;
  static const backgroundColor = Color(0xffE7FF79);

  final textStyle = AppTextStyle.robotoMedium(
      size: 16, color: AppColors.getTextColorForBackground(backgroundColor));

  final leftSectionWidth = 30.w;
  final height = 30.w * 1.4;

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      backgroundColor: backgroundColor.withOpacity(0.7),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.zero,
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: height,
        child: Row(
          children: [
            //Left section
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _habitNameWidget(),
                  _bottomSection2(),
                  // _bottomSection(),
                ],
              ),
            ),
            //Right section
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: CustomPaint(
                    size: Size(leftSectionWidth, height),
                    painter: RPSCustomPainter(backgroundColor),
                  ),
                ),
                _buttonsOnRightSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomSection2() {
    final n = DateTime.now();
    return Container(
      height: 85,
      padding: const EdgeInsets.only(bottom: 8, left: 8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _habitDayWidget(n.add(Duration(days: 1))),
          _habitDayWidget(n.add(Duration(days: 2))),
          _habitDayWidget(n.add(Duration(days: 3))),
          _habitDayWidget(n.add(Duration(days: 4))),
        ],
      ),
    );
  }

  Widget _habitDayWidget(DateTime date) {
    final thatDayHabit = widget.habit.getDayAt(date);
    return Container(
      width: 55,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            DateFormater.shortDayName(date.weekday),
            style: AppTextStyle.robotoMedium(size: 16),
          ),
          Text(
            '${date.day}',
            style: AppTextStyle.robotoRegular(size: 16),
          ),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: thatDayHabit.status.color,
            ),
          )
        ],
      ),
    );
  }

  Widget _buttonsOnRightSection() {
    final today = widget.habit.getDayAt(DateTime.now());
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        left: 10,
      ),
      width: leftSectionWidth,
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _chart(),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: 'Cel 3: '),
                const TextSpan(
                  text: '3tyg',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _chart() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: PieChart(
            PieChartData(
              centerSpaceRadius: 20,
              sectionsSpace: 0,
              startDegreeOffset: 270,
              sections: [
                PieChartSectionData(
                  color: const Color(0xff0293ee),
                  value: 40,
                  showTitle: false,
                  radius: 10,
                ),
                PieChartSectionData(
                  color: Colors.grey[400],
                  value: 60,
                  showTitle: false,
                  radius: 10,
                ),
              ],
            ),
          ),
        ),
        Text('40%', style: AppTextStyle.robotoMedium(size: 14)),
      ],
    );
  }

  Widget _habitNameWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 12),
      child: Row(
        children: [
          Image.asset(
            'assets/png/1.png',
            width: 52,
            height: 52,
          ),
          const SizedBox(width: 24.0),
          Text(
            widget.habit.name,
            style: AppTextStyle.robotoMedium(size: 26),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final Color color;

  RPSCustomPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    var paint_0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    var path_0 = Path();
    path_0.moveTo(size.width * 0.3620000, size.height);
    path_0.quadraticBezierTo(size.width * -0.0440000, size.height * 0.7591071,
        size.width * 0.0420000, size.height * 0.4578571);
    path_0.quadraticBezierTo(size.width * 0.1480000, size.height * 0.1151786,
        size.width * 0.6300000, size.height * 0.0014286);
    path_0.lineTo(size.width, size.height * 0.0021429);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width * 0.3620000, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
