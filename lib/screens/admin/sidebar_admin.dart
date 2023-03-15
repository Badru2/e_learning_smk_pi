import 'package:e_learning_smk_pi/screens/admin/home_screen/home_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/kelas_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class SideBarAdmin1 extends StatelessWidget {
  const SideBarAdmin1({super.key});

  @override
  Widget build(BuildContext context) {
    Widget? _getPageWidget(RouteSettings settings) {
      if (settings.name == null) {
        return null;
      }
      final uri = Uri.parse(settings.name!);
      switch (uri.path) {
        case '/':
          return const HomeScreenAdmin();
        case '/Home_Screen':
          return const KelasScreenAdmin();
      }
      return null;
    }

    return AdminScaffold(
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'DashBoard',
            route: '/',
          ),
          AdminMenuItem(
            title: 'Home',
            route: '/Home_Screen',
          ),
          AdminMenuItem(
            title: 'Class',
            route: '/kelas_screen',
          ),
        ],
        activeBackgroundColor: Colors.black,
        selectedRoute: '/',
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text('DashBoard'),
        ),
      ),
    );
  }
}
