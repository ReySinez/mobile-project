import 'package:flutter/material.dart';
import 'package:plan_t/calendarpage.dart';
// import 'package:plan_t/notification.dart';
import 'package:plan_t/models/plant_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CalendarPage()),
                  );
                },
                icon: const Icon(Icons.calendar_month),
                color: Color(0xff5603AD),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
              child: Text('Januari 2024'),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 1.6),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const NotificationPage(
                  //             title: 'Notification',
                  //           )),
                  // );
                },
                icon: const Icon(Icons.notifications_none),
                color: Color(0xff5603AD),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xffC2F8CB),
      ),

      // <-- Body Start -->
      body: Column(
        children: [
          SizedBox(height: 12.0),

          // Hari
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                'Sel',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                'Rab',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                'Kam',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                'Jum',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                'Sab',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                'Min',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),

          // Tanggal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '8',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                '9',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                '10',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                '11',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                '12',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                '13',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                '14',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),

          SizedBox(height: 56.0),

          // Main
          Container(
            padding: EdgeInsets.all(64),
            decoration: ShapeDecoration(
                shape: CircleBorder(), color: Color(0xff7EDFA0)),
            child: Column(
              children: [
                Text(
                  'Блюда:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  'Что-то',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, 4),
                        blurRadius: 16.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
                TextButton(
                  onPressed: () {},
                  child: Text('-'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Information
          Container(
            padding: EdgeInsets.fromLTRB(24, 32, 16, 32),
            margin: EdgeInsets.fromLTRB(0, 68, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '9 Januari 2024',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Як ваши справи ?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chat_bubble),
                  color: Color(0xff5603AD),
                  iconSize: 32,
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalendarPage()),
                );
              },
              icon: Icon(Icons.edit_calendar_outlined),
              tooltip: 'Hari ini',
              iconSize: 36,
              color: Color(0xff5603AD),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InsightPage()),
                );
              },
              icon: Icon(Icons.tips_and_updates_outlined),
              tooltip: 'Wawasan',
              iconSize: 36,
              color: Color(0xff5603AD),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffC2F8CB),
    );
  }
}

class InsightPage extends StatelessWidget {
  const InsightPage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  Widget createDaftarTanamanList() {
    return Container(
      margin: const EdgeInsets.all(1),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          PlantItem plantItemSelected = listTanaman[index];
          return Card(
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.only(top: 10, right: 4, bottom: 10),
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 8, right: 8),
                leading: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      plantItemSelected.srcImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  plantItemSelected.nama,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.grey.shade800,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 3),
                    Text(
                      plantItemSelected.keterangan,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Siram ${plantItemSelected.periodeSiram}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade900,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: listTanaman.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC2F8CB),
      appBar: AppBar(
        title: Text('Insight'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // kartu daftar tanaman
                  createDaftarTanamanList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
