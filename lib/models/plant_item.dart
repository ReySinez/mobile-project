class PlantItem {
  String nama;
  String keterangan;
  String periodeSiram;
  String cuaca;
  String srcImg;

  PlantItem({
    required this.nama,
    required this.keterangan,
    required this.periodeSiram,
    required this.cuaca,
    required this.srcImg,
  });
}

PlantItem plantItemSingle = PlantItem(
  nama: 'Cabe',
  keterangan:
      'Tumbuhan dengan organ yang menebal, berdaging, dan membengkak, biasanya untuk menyimpan air di iklim atau kondisi tanah kering.',
  periodeSiram: '3 hari sekali',
  cuaca: 'Berawan',
  srcImg: 'resources/images/cabe.jpg',
);

List<PlantItem> listTanaman = [
  PlantItem(
    nama: 'Блюдо',
    keterangan:
        'картошка',
    periodeSiram: 'с луком',
    cuaca: 'шо',
    srcImg: 'resources/images/cabe.jpg',
  ),
  PlantItem(
    nama: 'Пірог',
    keterangan:
        'мясо',
    periodeSiram: 'куліш',
    cuaca: 'Hangat',
    srcImg: 'resources/images/jahe.png',
  ),
  PlantItem(
    nama: 'Борщ',
    keterangan:
        'Сало',
    periodeSiram: 'сало',
    cuaca: 'сало',
    srcImg: 'resources/images/kunyit.jpg',
  ),
];
