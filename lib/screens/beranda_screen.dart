import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static const _jadwal = [
    MataKuliah(
      kode: 'IF-024',
      nama: 'Pemrograman Mobile II',
      sks: 3,
      hari: 'Senin',
      jam: '08.00 - 10.30',
      ruang: 'Lab 2',
    ),
    MataKuliah(
      kode: 'IF-021',
      nama: 'Basis Data',
      sks: 3,
      hari: 'Selasa',
      jam: '10.30 - 13.00',
      ruang: 'R. 301',
    ),
    MataKuliah(
      kode: 'IF-022',
      nama: 'Rekayasa Perangkat Lunak',
      sks: 3,
      hari: 'Rabu',
      jam: '08.00 - 10.30',
      ruang: 'R. 204',
    ),
    MataKuliah(
      kode: 'IF-023',
      nama: 'Jaringan Komputer',
      sks: 3,
      hari: 'Kamis',
      jam: '13.00 - 15.30',
      ruang: 'Lab 1',
    ),
    MataKuliah(
      kode: 'IF-025',
      nama: 'Pemrograman Web',
      sks: 3,
      hari: 'Jumat',
      jam: '08.00 - 10.30',
      ruang: 'Lab 3',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KampusKu')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              DateFormat('EEEE, d MMMM y', 'id_ID').format(DateTime.now()),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          for (final mk in _jadwal)
            ListTile(
              isThreeLine: true,
              leading: const Icon(Icons.class_),
              title: Text(mk.nama),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${mk.kode} · ${mk.hari} · ${mk.sks} SKS'),
                  Text(mk.jam),
                  Text(mk.ruang),
                ],
              ),
            ),
        ],
      ),
    );
  }
}