import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài tập 05 - Giới thiệu ngành học HUIT',
      home: const MajorInfoScreen(),
    );
  }
}

class MajorInfoScreen extends StatefulWidget {
  const MajorInfoScreen({super.key});

  @override
  State<MajorInfoScreen> createState() => _MajorInfoScreenState();
}

class _MajorInfoScreenState extends State<MajorInfoScreen> {
  int _currentIndex = 0;

  // Danh sách 2 màn hình giới thiệu ngành
  final List<Widget> _screens = [
    const CNTTScreen(),
    const ATTTScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color(0xFF004B9B),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'Ngành CNTT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.security),
            label: 'Ngành ATTT',
          ),
        ],
      ),
    );
  }
}

// ================= MÀN HÌNH 1: NGÀNH CNTT =================
class CNTTScreen extends StatelessWidget {
  const CNTTScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF004B9B),
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text(
          'Khoa CNTT - ĐH Công Thương TP.HCM',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=500',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'NGÀNH CÔNG NGHỆ THÔNG TIN',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mã ngành: 7480201',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.redAccent),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mô tả ngành học:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 6),
            const Text(
              'Ngành Công nghệ Thông tin tại HUIT đào tạo sinh viên kiến thức toàn diện về phát triển phần mềm, ứng dụng di động, hệ thống thông tin và trí tuệ nhân tạo. Sinh viên được trang bị tư duy lập trình vững chắc, thực hành trên các công nghệ hiện đại nhằm đáp ứng nhu cầu doanh nghiệp.',
              style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
            ),
            const SizedBox(height: 12),
            const Text(
              'Cơ hội việc làm:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 6),
            const Text(
              '• Lập trình viên Web/Mobile/Fullstack\n• Kỹ sư kiểm thử phần mềm (Tester/QA)\n• Quản trị viên cơ sở dữ liệu\n• Chuyên viên phân tích hệ thống',
              style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
            ),
            const SizedBox(height: 25),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                child: const Text('Trở về', style: TextStyle(color: Colors.indigo)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= MÀN HÌNH 2: NGÀNH ATTT =================
class ATTTScreen extends StatelessWidget {
  const ATTTScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF004B9B),
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text(
          'Khoa CNTT - ĐH Công Thương TP.HCM',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://images.unsplash.com/photo-1563986768609-322da13575f3?w=500',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'NGÀNH AN TOÀN THÔNG TIN',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mã ngành: 7480202',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.redAccent),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mô tả ngành học:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 6),
            const Text(
              'Ngành An toàn Thông tin trang bị cho sinh viên kiến thức chuyên sâu về bảo mật mạng, mã hóa dữ liệu, phòng chống tấn công mạng và dò tìm lỗ hổng bảo mật. Đảm bảo an toàn cho các hệ thống phần mềm và hạ tầng mạng trong thời đại kỹ thuật số.',
              style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
            ),
            const SizedBox(height: 12),
            const Text(
              'Cơ hội việc làm:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 6),
            const Text(
              '• Chuyên viên bảo mật hệ thống (Security Engineer)\n• Kỹ sư kiểm thử xâm nhập (Penetration Tester)\n• Quản trị an toàn mạng\n• Chuyên viên phân tích mã độc & ứng cứu sự cố',
              style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
            ),
            const SizedBox(height: 25),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                child: const Text('Trở về', style: TextStyle(color: Colors.indigo)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}