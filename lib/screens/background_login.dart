import 'package:flutter/widgets.dart';
import '../widgets/circle.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      heightFactor: 0.9,
    );
  }
}
