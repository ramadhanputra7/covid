class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Hukum dalam pengurusan jenazah adalah...",
    "options": ['Fardu ain', 'Fardu kifayah', 'Makruh', 'Wajib'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "Dibawah ini yang bukan merupakan hikmah dari pengurusan jenazah adalah",
    "options": [
      'Mengingatkan manusia akan kematian',
      'Meningkatkan ketakwaan kepada allah',
      'Mendorong manusia untuk memperbanyak amal sholih',
      'Mengurusi jenazah seakan-akan sebuah beban'
    ],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question":
        "Jumlah kain kafan yang di gunakan untuk membungkus jenazah perempuan sebanyak..",
    "options": ['2 lembar', '3 lembar', '4 lembar', '5 lembar '],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "Jumlah takbir dalam sholat jenazah sebanyak..",
    "options": ['3 kali', '4 kali>>', '5 kali', '6 kali>>'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question":
        "Seorang yang mati syahid tidak semua boleh dimandikan dan dikafani, namun ada yang langsung dikuburkan, contohnya seperti....",
    "options": [
      'Orang meninggal karena perang membela Negara',
      'Orang yang meninggal karena membela agama>>',
      'Orang yang meninggal karena terbenam',
      'Orang yang meninggal karena melahirkan>>'
    ],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Berapa jumlah kain kafan untuk jenazah laki-laki..",
    "options": ['3 lembar', '4 lembar>>', '5 lembar ', '6 lembar>>'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Bacaan sholat jenazah setelah takbir ialah..",
    "options": ['Sholawat', 'Alfatihah>>', 'Doa', 'Tahlil>>'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question":
        "Apabilla jenazah perempuan maka posisi imam harus di sejajar dengan… jenazah",
    "options": ['Kaki', 'Pinggang>>', 'Lutut', 'Tumit >>'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question":
        "Apa yang harus kita ucapkan  ketika ada seseorang yang meninggal…",
    "options": [
      'Mengucapkan alhamdulillah',
      'Mengucapkan Allahuakbar>>',
      'Mengucapkan innalihlahi wainna ilaihi raji’un',
      'Mengucapkan lailahailallah>>'
    ],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question":
        "Menggunakan masker, menggunakan APD ,menggunakan sepatu boad, menggunakan sarung tangan , kegiatan diatas merupakan pengurusan jenazah saat…",
    "options": [
      'Mensholatkan jenazah',
      'Mengubur jenazah>>',
      'Memandiakan jenazah',
      'Mendoakan jenazah>>'
    ],
    "answer_index": 2,
  },
  {
    "id": 11,
    "question":
        "Mengurus jenazah merupakan fardu kifayah , yang dimaksud fardu kifayah ialah",
    "options": [
      'Kewajiban yang bebankan kepada setiap individu muslim',
      'Kewajiban yang bebankan kepada anggota masyarakat>>',
      'Kewajiban yang dibebankan kepada pemerintah',
      'Kewajiban apabilla ada anggota masyarakat yang sudah melakukanya maka yang lain gugur untuk melakukanya>>'
    ],
    "answer_index": 3,
  },
  {
    "id": 12,
    "question": "Bacaan sholawat dalam sholat jenazah dibaca setelah takbir…",
    "options": ['Pertama', 'Kedua>>', 'Ketiga', 'Keempat>>'],
    "answer_index": 1,
  },
  {
    "id": 13,
    "question": "Arti kata ziarah adalah",
    "options": ['Menghibur', 'Menghirmati>>', 'Mengunjungi', 'Mengenang>>'],
    "answer_index": 0,
  },
  {
    "id": 14,
    "question": "Berikut yang bukan hikmah dalam tujuan ziarah adalah",
    "options": [
      'Mengingat kematian',
      'Dapat bersikap zuhud>>',
      'Memohon doa melalui orang yang mati',
      'Mendapatkan pahala>>'
    ],
    "answer_index": 2,
  },
  {
    "id": 15,
    "question":
        "Bacaan dalam sholat jenazah “Allahummagfirlaha” dan seterusnya menandakan jenazah yang disholati adalah mayat",
    "options": [
      'Laki-laki satu',
      'Laki-laki dua orang>>',
      'Perempuan satu orang',
      'Perempuan dua orang>>'
    ],
    "answer_index": 2,
  },
  {
    "id": 16,
    "question":
        "Mengunjungi orang yang sedang tertimpa musibah kematian salah seorang keluarga dalam rangka menghibur atau memberi semangat disebut dengan istilah",
    "options": ['Ziarah', 'Ta’ziah>>', 'Berkhowat', 'Zuhud>>'],
    "answer_index": 1,
  },
  {
    "id": 17,
    "question":
        "“ KULLU NAFSYIN DAIKHOTUL MAUT” Arti QS ,ali imron /3: 185 tersebut artinya ialah..",
    "options": [
      'Setiap manusia yang bernyawa itu pasti akan binasa',
      'Setiap makhluk yang bernyawwa itu tidaklah kekal>>',
      'Kematian tidak akan jauh dari kehidupan',
      'Setiap yang bernyawa pasti akan merasakan mati>>'
    ],
    "answer_index": 3,
  },
  {
    "id": 18,
    "question": "Arti kata ”takziah” adalah…..",
    "options": [
      'a. Menghibur',
      'b. Menghormati',
      'c. Mengenang',
      'd. Mendoakan'
    ],
    "answer_index": 0,
  },
  {
    "id": 19,
    "question":
        "Hal pertama yang harus dilakukan apabila seorang muslim telah dipastikan meninggal dunia adalah….",
    "options": [
      'a. Melemaskan seluruh persendian si mayat',
      'b. Menutup kedua mata si mayat',
      'c. Menutup sekujur jasad si mayat dengan kain',
      'd. Membagikan harta warisan'
    ],
    "answer_index": 1,
  },
  {
    "id": 20,
    "question": "Sunnah dalam shalat jenazah adalah...",
    "options": [
      'a. Israr (merendahkan suara bacaan shalat)',
      'b. Mengucapkan salam',
      'c. Takbir empa kali',
      'd. Membaca shalawat',
    ],
    "answer_index": 0,
  },
];
