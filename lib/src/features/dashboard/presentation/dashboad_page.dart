import 'package:flutter/material.dart';
import 'package:kontrol_panel/src/features/dashboard/domain/dashboard_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final map = [
      DashboardItem(
        title: "Wifi & Network",
        description: "Manage your Internet here",
        icon: Icons.network_wifi,
      ),
      DashboardItem(
        title: "Date & Time",
        description: "All the settings related to date and time",
        icon: Icons.calendar_today_outlined,
      ),
      DashboardItem(
        title: "Services",
        description: "Manage system services here",
        icon: Icons.settings,
      ),
      DashboardItem(
        title: "Users",
        description: "Manage system users here",
        icon: Icons.person,
      ),
      DashboardItem(
        title: "Storage",
        description: "Manage your storage here",
        icon: Icons.storage_outlined,
      ),
      DashboardItem(
        title: "Uninstall program",
        description: "Uninstall programs from here",
        icon: Icons.delete_forever_outlined,
      ),
      DashboardItem(
        title: "System Information",
        description: "Your system information",
        icon: Icons.info_outline,
      ),
      DashboardItem(
        title: "System Logs",
        description: "View system logs here",
        icon: Icons.list_alt_outlined,
      ),
      DashboardItem(
        title: "Updates",
        description: "Update your system here",
        icon: Icons.update_outlined,
      ),
      DashboardItem(
        title: "Policies",
        description: "Edit Policies",
        icon: Icons.policy_outlined,
      ),
      DashboardItem(
        title: "Firewall",
        description: "Manage Firewall Configuration",
        icon: Icons.lock_reset_sharp,
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.12),
                    width: 1,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple[50]!.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: SizedBox(
                  width: 900,
                  child: Row(
                    children: [
                      // add text as well as search bar
                      const Text(
                        "Dashboard",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        visualDensity: VisualDensity.compact,
                        iconSize: 22,
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 1000,
                child: GridView.builder(
                  padding: const EdgeInsets.all(40),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (MediaQuery.of(context).size.width ~/ 500).clamp(1, 2),
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 20,
                    childAspectRatio: 2.8,
                  ),
                  itemCount: map.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    hoverColor: Colors.deepPurple[50]!.withOpacity(0.7),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.85),
                        border: Border.all(color: Colors.black12, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple[50]!.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            map.elementAt(index).icon,
                            size: 56,
                            color: Colors.brown,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  map.elementAt(index).title,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  map.elementAt(index).description,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
