import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  const SideBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text(
            'Aktivitas Tilawah',
          ),
          leading: const Icon(Icons.local_activity_rounded),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Riwayat Kelas',
          ),
          leading: const Icon(Icons.abc),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Progres Belajar',
          ),
          leading: const Icon(Icons.star_rounded),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Security',
          ),
          leading: const Icon(Icons.private_connectivity_rounded),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Mode Malam',
          ),
          leading: const Icon(Icons.dark_mode_rounded),
          trailing: Switch(
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text(
            'Bantuan',
          ),
          leading: const Icon(Icons.live_help_rounded),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Kebijakan Privasi',
          ),
          leading: const Icon(Icons.privacy_tip_rounded),
          onTap: () {},
        ),
      ],
    );
  }
}
