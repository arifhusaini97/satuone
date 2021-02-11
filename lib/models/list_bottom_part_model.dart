import 'package:flutter/material.dart';

// One entry in the multilevel list displayed by this app.
class EntryListModel {
  EntryListModel(this.icon, this.title,
      [this.children = const <EntryListModel>[]]);
  final IconData icon;
  final String title;
  final List<EntryListModel> children;
}

final List<EntryListModel> lists = <EntryListModel>[
  EntryListModel(
    Icons.supervised_user_circle,
    'Help & Support',
    <EntryListModel>[
      EntryListModel(
        Icons.help,
        'Help Centre',
      ),
      EntryListModel(
        Icons.inbox,
        'Support Inbox',
      ),
    ],
  ),
  EntryListModel(
    Icons.settings_backup_restore,
    'Settings',
    <EntryListModel>[
      EntryListModel(
        Icons.power_settings_new,
        'General Settings',
      ),
      EntryListModel(
        Icons.security,
        'Privacy Shortcuts',
      ),
      EntryListModel(
        Icons.subtitles,
        'Language',
      ),
    ],
  ),
];
