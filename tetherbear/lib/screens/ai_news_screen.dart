import 'package:flutter/material.dart';

class AINewsScreen extends StatelessWidget {
  const AINewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1419),
      body: SafeArea(
        child: Column(
          children: [
            // 상단 타이틀 & 검색창
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AI 뉴스',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),

                  // 검색창
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFF1a1f26),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[800]!, width: 1),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey, size: 22),
                        SizedBox(width: 10),
                        Text(
                          'search',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // 스크롤 가능한 뉴스 리스트
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    // 알림 박스
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFfff8e1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '제공되는 정보는 AI가 요약한 뉴스로 해석에 실수가 있을 수 있습니다. 중요한 정보를 확인하세요.',
                        style: TextStyle(
                          color: Color(0xFF8b6914),
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // 뉴스 카드들
                    _buildNewsCard(
                      category: '호재',
                      categoryColor: Color(0xFF4caf50),
                      date: '2025-04-07 10:00',
                      title: 'FTX 채권자 40만명, \$25억 못받는다...KYC 미이행',
                    ),

                    _buildNewsCard(
                      category: '악재',
                      categoryColor: Color(0xFFf44336),
                      date: '2025-04-05 11:08',
                      title: 'IQ 코인베이스 주가 33% 하락... FTX 붕괴 이후 최악',
                    ),

                    _buildNewsCard(
                      category: '악재',
                      categoryColor: Color(0xFFf44336),
                      date: '2025-04-05 10:04',
                      title: '백팩, FTX EU 인수 완료...이용자 자금 반환 재개',
                    ),

                    _buildNewsCard(
                      category: '호재',
                      categoryColor: Color(0xFF4caf50),
                      date: '2025-04-05 13:31',
                      title: '백팩, FTX EU 인수 완료...이용자 자금 반환 재개',
                    ),

                    _buildNewsCard(
                      category: '호재',
                      categoryColor: Color(0xFF4caf50),
                      date: '2025-04-04 09:15',
                      title: '비트코인, 7만 달러 돌파... 기관 투자 급증',
                    ),

                    _buildNewsCard(
                      category: '악재',
                      categoryColor: Color(0xFFf44336),
                      date: '2025-04-03 16:22',
                      title: '바이낸스, SEC와 소송 합의... 벌금 45억 달러',
                    ),

                    SizedBox(height: 100), // 네비게이션 바 공간
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 뉴스 카드 위젯
  Widget _buildNewsCard({
    required String category,
    required Color categoryColor,
    required String date,
    required String title,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF1a1f26),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[800]!, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 호재/악재 뱃지
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: categoryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: categoryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      category,
                      style: TextStyle(
                        color: categoryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // 날짜/시간
              Text(
                date,
                style: TextStyle(color: Colors.grey[500], fontSize: 12),
              ),
            ],
          ),

          SizedBox(height: 12),

          // 뉴스 제목
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
