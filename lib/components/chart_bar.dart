import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percent;

  ChartBar({
    required this.label,
    required this.percent,
    required this.value,
});



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, Constraints) {
        return Column(
          children: <Widget>[
            Container(
              height: Constraints.maxHeight * 0.15,
              width: 45,
              child: FittedBox(
                child: Text('R\$${value.toStringAsFixed(2)}',)
              ),
            ),
            SizedBox(height: Constraints.maxHeight * 0.05),
            Container(
              height: Constraints.maxHeight * 0.6,
              width: 10,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: percent,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: Constraints.maxHeight * 0.05),
            Container(
              height: Constraints.maxHeight * 0.15,
              child: FittedBox
              (child:
                Text(label),
              )
            ),
          ],
        );
      },
    );
  }
}
