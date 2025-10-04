import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1419),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Account Information 섹션
                Text(
                  'Account Information',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                // 사용자 정보 카드
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1a1f26),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      // 프로필 아이콘
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        '사용자 이메일',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),

                // 사용자 닉네임 메뉴
                _buildMenuItem('사용자 닉네임', () {}),

                SizedBox(height: 30),

                // Forex Partnership 섹션
                Text(
                  'Forex Partnership',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),

                _buildPartnershipCard('Vantage 벤디지'),

                SizedBox(height: 30),

                // Crypto Partnership 섹션
                Text(
                  'Crypto Partnership',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),

                _buildPartnershipCard('오렌지x'),
                SizedBox(height: 15),
                _buildPartnershipCard('Deepcoin 딥코인'),

                SizedBox(height: 30),

                // Platform Partnership 섹션
                Text(
                  'Platform Partnership',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),

                _buildPartnershipCard('트레이딩뷰'),

                SizedBox(height: 30),

                // Account Settings 섹션
                Text(
                  'Account Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),

                _buildMenuItem('문의하기', () {}),
                _buildMenuItem('이용약관', () {}),
                _buildMenuItem('로그아웃', () {}),
                _buildMenuItem('회원탈퇴', () {}),

                SizedBox(height: 100), // 네비게이션 바 공간 확보
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 메뉴 아이템 위젯
  Widget _buildMenuItem(String title, VoidCallback onTap) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xFF1a1f26),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.white, fontSize: 15)),
        trailing: Icon(Icons.chevron_right, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }

  // 파트너십 카드 위젯
  Widget _buildPartnershipCard(String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFFe8e8e8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                '배너 이미지 영역',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
