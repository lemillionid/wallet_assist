import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({super.key});

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('asset/images/user.jpg'),
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dede Andriansyah',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'dedeandriansyah0@gmail.com',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Get Premium',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: const Icon(Icons.local_activity_rounded),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Bank Sync',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: const Icon(Icons.house),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Progres Belajar',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: const Icon(Icons.star_rounded),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Security',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: const Icon(Icons.private_connectivity_rounded),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Mode Gelap',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: const Icon(Icons.dark_mode_rounded),
            trailing: Switch(
              value: false,
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          ListTile(
            title: const Text(
              'Bantuan',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: const Icon(Icons.live_help_rounded),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Kebijakan Privasi',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: const Icon(Icons.privacy_tip_rounded),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
