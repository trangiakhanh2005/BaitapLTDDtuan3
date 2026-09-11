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
      title: 'Bài tập 04 - Thông tin nhóm',
      home: const GroupInfoScreen(),
    );
  }
}

class GroupInfoScreen extends StatelessWidget {
  const GroupInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Danh sách 3 thành viên trong nhóm
    final List<Map<String, String>> members = [
      {
        'mssv': '2001221234',
        'name': 'Dương Gia Hiếu',
        'role': 'Nhóm trưởng',
        'avatar': 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=150',
      },
      {
        'mssv': '2001225678',
        'name': 'Phạm Đức Thắng',
        'role': 'Thành viên',
        'avatar': 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?w=150',
      },
      {
        'mssv': '2001229012',
        'name': 'Trần Gia Khánh',
        'role': 'Thành viên',
        'avatar': 'https://images.unsplash.com/photo-1580489944761-15a19d654956?w=150',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF004B9B),
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text(
          'Thông tin nhóm học tập',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            // Mã nhóm
            const Text(
              'Mã nhóm: NHOM_01_CNTT',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 10),

            // Tên nhóm
            const Text(
              'Tên nhóm: Nhóm Phát Triển Ứng Dụng Di Động',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 10),

            // Số lượng thành viên
            const Text(
              'Số lượng thành viên: 03 sinh viên',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Danh sách thành viên:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),

            // Danh sách 3 thành viên sử dụng Card Widget
            Column(
              children: members.map((member) {
                bool isLeader = member['role'] == 'Nhóm trưởng';
                return Card(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        // Avatar thành viên
                        ClipOval(
                          child: Image.network(
                            member['avatar']!,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Thông tin chi tiết
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                member['name']!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'MSSV: ${member['mssv']}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Vai trò: ${member['role']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: isLeader ? Colors.redAccent : Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Nút Trở về
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  'Trở về',
                  style: TextStyle(color: Colors.indigo),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}