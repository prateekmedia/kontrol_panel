import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final map = {
      "Date & Time": Icons.calendar_today_outlined,
      "Services": Icons.settings,
      "Users": Icons.person,
      "Storage": Icons.storage_outlined,
      "Uninstall program": Icons.delete_forever_outlined,
      "System Information": Icons.info_outline,
      "System Logs": Icons.list_alt_outlined,
      "Updates": Icons.update_outlined,
      "Policies": Icons.policy_outlined,
      "Firewall": Icons.network_ping_rounded,
      "Wifi & Network": Icons.network_wifi,
    };
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1.4,
                  ),
                  itemCount: map.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    hoverColor: Colors.deepPurple[50]!.withOpacity(0.7),
                    child: Container(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            map.values.elementAt(index),
                            size: 38,
                            color: Colors.brown,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            map.keys.elementAt(index),
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
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
