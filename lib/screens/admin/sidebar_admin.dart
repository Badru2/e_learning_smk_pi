import 'package:e_learning_smk_pi/route_page.dart';
import 'package:e_learning_smk_pi/screens/admin/guru_screen/guru_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/home_screen/home_screen.dart';
import 'package:e_learning_smk_pi/screens/admin/kelas/kelas_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class SideBarAdmin1 extends StatelessWidget {
  const SideBarAdmin1({super.key});

  Widget? _getPageWidget(RouteSettings settings) {
    if (settings.name == null) {
      return null;
    }
    final uri = Uri.parse(settings.name!);
    switch (uri.path) {
      case dashboard:
        return const HomeScreenAdmin();
      case guru:
        return const GuruScreenAdmin();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'DashBoard',
            route: '/',
          ),
          AdminMenuItem(
            title: 'Home',
            route: '/HomeScreenAdmin',
          ),
          AdminMenuItem(
            title: 'Guru',
            route: '/GuruAdmin',
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

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
    required this.route,
    required this.body,
  }) : super(key: key);

  final Widget body;
  final String route;

  final List<AdminMenuItem> _sideBarItems = const [
    AdminMenuItem(
      title: 'Dashboard',
      route: dashboard,
      icon: Icons.dashboard,
    ),
    // AdminMenuItem(
    //   title: 'Top Level',
    //   icon: Icons.file_copy,
    //   children: [
    //   ],
    // ),
    AdminMenuItem(
      title: 'Home',
      route: '/HomeScreenAdmin',
    ),
    AdminMenuItem(
      title: 'Guru',
      route: '/GuruAdmin',
    ),
  ];

  final List<AdminMenuItem> _adminMenuItems = const [
    AdminMenuItem(
      title: 'User Profile',
      icon: Icons.account_circle,
      route: '/',
    ),
    AdminMenuItem(
      title: 'Settings',
      icon: Icons.settings,
      route: '/',
    ),
    AdminMenuItem(
      title: 'Logout',
      icon: Icons.logout,
      route: '/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('Sample'),
      //   actions: [
      //     PopupMenuButton<AdminMenuItem>(
      //       child: const Icon(Icons.account_circle),
      //       itemBuilder: (context) {
      //         return _adminMenuItems.map((AdminMenuItem item) {
      //           return PopupMenuItem<AdminMenuItem>(
      //             value: item,
      //             child: Row(
      //               children: [
      //                 Icon(item.icon),
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 8.0),
      //                   child: Text(
      //                     item.title,
      //                     style: const TextStyle(
      //                       fontSize: 14,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           );
      //         }).toList();
      //       },
      //       onSelected: (item) {
      //         print(
      //             'actions: onSelected(): title = ${item.title}, route = ${item.route}');
      //         Navigator.of(context).pushNamed(item.route!);
      //       },
      //     ),
      //   ],
      // ),
      sideBar: SideBar(
        backgroundColor: const Color(0xFFEEEEEE),
        activeBackgroundColor: Colors.black26,
        borderColor: const Color(0xFFE7E7E7),
        iconColor: Colors.black87,
        activeIconColor: Colors.blue,
        textStyle: const TextStyle(
          color: Color(0xFF337ab7),
          fontSize: 13,
        ),
        activeTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 13,
        ),
        items: _sideBarItems,
        selectedRoute: route,
        onSelected: (item) {
          print(
              'sideBar: onTap(): title = ${item.title}, route = ${item.route}');
          if (item.route != null && item.route != route) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'header',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: body,
      ),
    );
  }
}
