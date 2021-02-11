import 'package:flutter/material.dart';

// One entry in the multilevel list displayed by this app.
class EntryModel {
  EntryModel(this.icon, this.title, this.subtitle,
      [this.children = const <EntryModel>[]]);
  final IconData icon;
  final String title;
  final String subtitle;
  final List<EntryModel> children;
}

final List<EntryModel> dummyDataActivity = <EntryModel>[
      EntryModel(
        null,
        'Universiti Teknologi MARA (UiTM) Cawangan Negeri Sembilan: 2018-2020',
        '\nCS247 - Bachelor Of Science (Hons.) Computational Mathematics',
        <EntryModel>[
          EntryModel(
            Icons.supervised_user_circle,
            'Intelligent Data Club (Vice-President): 2019-2020',
            null,
          ),
          EntryModel(
            Icons.supervised_user_circle,
            'Artificial Intelligence Club (President): 2018-2019',
            null,
          ),
          EntryModel(
            Icons.event_seat,
            'Breakthrough Invention, Innovation and Design Exhibition, BiiDE 2019 - Universiti Teknologi MARA (UiTM) Cawangan Pahang: Gold Medal',
            null,
          ),
          EntryModel(
            Icons.event_seat,
            'Malaysia Industrial Mathematical Modelling Challenge, MIMMC 2019 - Universiti Teknologi Malaysia (UTM): First Runner-Up',
            null,
          ),
        ],
      ),
      EntryModel(
        null,
        'Universiti Teknologi MARA (UiTM) Cawangan Terengganu: 2015-2018',
        '\nCS110 - Diploma In Computer Science',
        <EntryModel>[
          EntryModel(
            Icons.supervised_user_circle,
            'Center Of Academic Excellence (Head Of Treasurer): 2016-2017',
            null,
          ),
          EntryModel(
            Icons.supervised_user_circle,
            '100Strategist (Vice-Director): 2015-2016',
            null,
          ),
        ],
      ),
      EntryModel(
        null,
        'Sekolah Menengah Agama Persekutuan (SMAP) Bentong (SUPERB): 2013-2014',
        '\nSPM - Pure Religious Science',
        <EntryModel>[
          EntryModel(
            Icons.supervised_user_circle,
            'School Prefect (Student Welfare Exco): 2013-2014',
            null,
          ),
          EntryModel(
            Icons.supervised_user_circle,
            'Hostel Prefect (Student Welfare Exco): 2013-2014',
            null,
          ),
          EntryModel(
            Icons.supervised_user_circle,
            'BADAR (General Secretary): 2013-2014',
            null,
          ),
        ],
      ),
    ];