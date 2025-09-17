import 'package:flutter/material.dart';

void main() {
  runApp(MessagingApp());
}

class MessagingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messages',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: MessageListScreen(),
    );
  }
}

class Message {
  final String sender;
  final String preview;
  final String time;
  final Color avatarColor;
  final String fullContent;

  Message({
    required this.sender,
    required this.preview,
    required this.time,
    required this.avatarColor,
    required this.fullContent,
  });
}

class MessageListScreen extends StatelessWidget {
  final List<Message> messages = [
    Message(
      sender: 'VK-PNBSMS',
      preview: 'Dear Customer, The Balance for account N...',
      time: '5 min',
      avatarColor: Colors.cyan,
      fullContent:
          'Dear Customer, The Balance for account Number XXXXXXXXXXXXX672: INR 74825.25,. SMS PNB PROD to 5607040 for detailed product list. -PNB',
    ),
    Message(
      sender: 'AD-AIRTEL-S',
      preview: 'गृह मंत्रालय I4C के अनुसार: एयरटेल उपयोगकर्ताओं...',
      time: '10:00 am',
      avatarColor: Colors.red,
      fullContent:
          'गृह मंत्रालय I4C के अनुसार: एयरटेल उपयोगकर्ताओं के लिए साइबर फ्रॉड से पैसों का नुकसान 68.7% कम हो गया है। हम इस संख्या को और घटाने के लिए एयरटेल - द सेफ नेटवर्क पर लगातार काम कर रहे हैं, ताकि आप सुरक्षित रह सकें। अधिक जानने के लिए क्लिक करें: https://gh0hi-web.app.link/e/telecom_news',
    ),
    Message(
      sender: 'AD-AIRTEL-S',
      preview: 'गृह मंत्रालय I4C के अनुसार: एयरटेल उपयोगकर्ताओं...',
      time: '11:25 am',
      avatarColor: Colors.red,
      fullContent:
          'गृह मंत्रालय I4C के अनुसार: एयरटेल उपयोगकर्ताओं के लिए साइबर फ्रॉड से पैसों का नुकसान 68.7% कम हो गया है। हम इस संख्या को और घटाने के लिए एयरटेल - द सेफ नेटवर्क पर लगातार काम कर रहे हैं, ताकि आप सुरक्षित रह सकें। अधिक जानने के लिए क्लिक करें: https://gh0hi-web.app.link/e/telecom_news',
    ),
    Message(
      sender: 'BG-PNBSMS-S',
      preview: 'Your a/c no XX672 is credited by Rs 45000...',
      time: '8:03 pm',
      avatarColor: Colors.cyan,
      fullContent:
          'Your a/c no XX672 is credited by Rs 45000.00 on 16-09-25 20:03:25 by a/c linked to mobile 9XXXXXXXX385 (IMPS Ref no 521215353015)-PNB',
    ),
    Message(
      sender: 'AD-AIRTEL-S',
      preview: 'गृह मंत्रालय I4C के अनुसार: एयरटेल उपयोगकर्ताओं...',
      time: '7:52 pm',
      avatarColor: Colors.red,
      fullContent:
          'गृह मंत्रालय I4C के अनुसार: एयरटेल उपयोगकर्ताओं के लिए साइबर फ्रॉड से पैसों का नुकसान 68.7% कम हो गया है। हम इस संख्या को और घटाने के लिए एयरटेल - द सेफ नेटवर्क पर लगातार काम कर रहे हैं, ताकि आप सुरक्षित रह सकें। अधिक जानने के लिए क्लिक करें: https://gh0hi-web.app.link/e/telecom_news',
    ),
    Message(
      sender: 'VM-blnkit-S',
      preview: '<#> Please use OTP 9151 to login to your...',
      time: '7:40 pm',
      avatarColor: Colors.purple,
      fullContent:
          '<#> Please use OTP 9151 to login to your Blinkit account. OTP is valid for 5 minutes. Please do not share with anyone. bEQpjM+wgTp',
    ),
    Message(
      sender: 'JM-FURLEN-S',
      preview: 'Hello! It looks like your Furlenco subscri...',
      time: '6:35 pm',
      avatarColor: Colors.green,
      fullContent:
          'Hello! It looks like your Furlenco subscription is ending soon. Would you like to extend or return your items? Contact us for assistance.',
    ),
    Message(
      sender: 'BG-PNBSMS-S',
      preview: 'A/c XX2672 debited INR 200.00 Dt 16-09...',
      time: '6:15 pm',
      avatarColor: Colors.cyan,
      fullContent:
          'A/c XX2672 debited INR 200.00 Dt 16-09-25 18:15:22 thru UPI:525912000075.Bal INR 29829.25 Not u?Fwd this SMS to 9264092640 to block UPI.Download PNB ONE-PNB',
    ),
    Message(
      sender: 'AD-ARWGOV-S',
      preview: 'Wondering how many SIMs have been is...',
      time: '5:39 pm',
      avatarColor: Colors.orange,
      fullContent:
          'Wondering how many SIMs have been issued against your Aadhaar? Find out instantly with our Aadhaar-SIM linking verification service.',
    ),
    Message(
      sender: 'NMIMS CDOE – NMIMS Online',
      preview: 'Unlock Your Future with NMIMS Online ...',
      time: '5:23 pm',
      avatarColor: Colors.brown,
      fullContent:
          'Unlock Your Future with NMIMS Online Distance Learning Programs. Apply now for our accredited courses and advance your career.',
    ),
    Message(
      sender: '59039465',
      preview: 'Your Twilio verification code is: 147901',
      time: '5:12 pm',
      avatarColor: Colors.orange,
      fullContent:
          'Your Twilio verification code is: 147901. This code will expire in 10 minutes.',
    ),
    Message(
      sender: 'AX-ARTMOV-P',
      preview: 'Never miss cricket moments! You have u...',
      time: '4:25 pm',
      avatarColor: Colors.red,
      fullContent:
          'Never miss cricket moments! You have unread cricket updates. Check the latest scores and highlights now.',
    ),
    Message(
      sender: 'AD-AIRTEL-P',
      preview: 'Aapki pasandeeda Hellotune - Airtel Tha...',
      time: '3:02 pm',
      avatarColor: Colors.green,
      fullContent:
          'Aapki pasandeeda Hellotune - Airtel Thanks jaldi khatam hone wala hai. Renew karne ke liye dial karein *444# ya Airtel Thanks app use karein.',
    ),
    Message(
      sender: 'AD-650025-P',
      preview: 'Your new playlist is waiting! Claim up to ...',
      time: '16 Feb',
      avatarColor: Colors.pink,
      fullContent:
          'Your new playlist is waiting! Claim up to 3 months free Spotify Premium. Limited time offer, don\'t miss out!',
    ),
    Message(
      sender: '59039465',
      preview: 'Your Twilio verification code is: 147901',
      time: '16 Feb',
      avatarColor: Colors.orange,
      fullContent:
          'Your Twilio verification code is: 147901. This code will expire in 10 minutes.',
    ),
    Message(
      sender: 'AX-ARTMOV-P',
      preview: 'Never miss cricket moments! You have u...',
      time: '16 Feb',
      avatarColor: Colors.red,
      fullContent:
          'Never miss cricket moments! You have unread cricket updates. Check the latest scores and highlights now.',
    ),
    Message(
      sender: 'AD-AIRTEL-P',
      preview: 'Aapki pasandeeda Hellotune - Airtel Tha...',
      time: '16 Feb',
      avatarColor: Colors.green,
      fullContent:
          'Aapki pasandeeda Hellotune - Airtel Thanks jaldi khatam hone wala hai. Renew karne ke liye dial karein *444# ya Airtel Thanks app use karein.',
    ),
    Message(
      sender: 'AD-650025-P',
      preview: 'Your new playlist is waiting! Claim up to ...',
      time: '16 Feb',
      avatarColor: Colors.pink,
      fullContent:
          'Your new playlist is waiting! Claim up to 3 months free Spotify Premium. Limited time offer, don\'t miss out!',
    ),
    Message(
      sender: '59039465',
      preview: 'Your Twilio verification code is: 147901',
      time: '16 Feb',
      avatarColor: Colors.orange,
      fullContent:
          'Your Twilio verification code is: 147901. This code will expire in 10 minutes.',
    ),
    Message(
      sender: 'AX-ARTMOV-P',
      preview: 'Never miss cricket moments! You have u...',
      time: '16 Feb',
      avatarColor: Colors.red,
      fullContent:
          'Never miss cricket moments! You have unread cricket updates. Check the latest scores and highlights now.',
    ),
    Message(
      sender: 'AD-AIRTEL-P',
      preview: 'Aapki pasandeeda Hellotune - Airtel Tha...',
      time: '16 Feb',
      avatarColor: Colors.green,
      fullContent:
          'Aapki pasandeeda Hellotune - Airtel Thanks jaldi khatam hone wala hai. Renew karne ke liye dial karein *444# ya Airtel Thanks app use karein.',
    ),
    Message(
      sender: 'AD-650025-P',
      preview: 'Your new playlist is waiting! Claim up to ...',
      time: '16 Feb',
      avatarColor: Colors.pink,
      fullContent:
          'Your new playlist is waiting! Claim up to 3 months free Spotify Premium. Limited time offer, don\'t miss out!',
    ),
    Message(
      sender: 'AX-ARTMOV-P',
      preview: 'Never miss cricket moments! You have u...',
      time: '15 Feb',
      avatarColor: Colors.red,
      fullContent:
          'Never miss cricket moments! You have unread cricket updates. Check the latest scores and highlights now.',
    ),
    Message(
      sender: 'AD-AIRTEL-P',
      preview: 'Aapki pasandeeda Hellotune - Airtel Tha...',
      time: '15 Feb',
      avatarColor: Colors.green,
      fullContent:
          'Aapki pasandeeda Hellotune - Airtel Thanks jaldi khatam hone wala hai. Renew karne ke liye dial karein *444# ya Airtel Thanks app use karein.',
    ),
    Message(
      sender: 'AD-650025-P',
      preview: 'Your new playlist is waiting! Claim up to ...',
      time: '15 Feb',
      avatarColor: Colors.pink,
      fullContent:
          'Your new playlist is waiting! Claim up to 3 months free Spotify Premium. Limited time offer, don\'t miss out!',
    ),
    Message(
      sender: '59039465',
      preview: 'Your Twilio verification code is: 147901',
      time: '15 Feb',
      avatarColor: Colors.orange,
      fullContent:
          'Your Twilio verification code is: 147901. This code will expire in 10 minutes.',
    ),
    Message(
      sender: 'AX-ARTMOV-P',
      preview: 'Never miss cricket moments! You have u...',
      time: '14 Feb',
      avatarColor: Colors.red,
      fullContent:
          'Never miss cricket moments! You have unread cricket updates. Check the latest scores and highlights now.',
    ),
    Message(
      sender: 'AD-AIRTEL-P',
      preview: 'Aapki pasandeeda Hellotune - Airtel Tha...',
      time: '14 Feb',
      avatarColor: Colors.green,
      fullContent:
          'Aapki pasandeeda Hellotune - Airtel Thanks jaldi khatam hone wala hai. Renew karne ke liye dial karein *444# ya Airtel Thanks app use karein.',
    ),
    Message(
      sender: 'AD-650025-P',
      preview: 'Your new playlist is waiting! Claim up to ...',
      time: '14 Feb',
      avatarColor: Colors.pink,
      fullContent:
          'Your new playlist is waiting! Claim up to 3 months free Spotify Premium. Limited time offer, don\'t miss out!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F1F1),
        elevation: 0,
        title: Text(
          'Messages',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('P', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageDetailScreen(message: message),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: message.avatarColor,
                    radius: 24,
                    child: Icon(Icons.person, color: Colors.white, size: 24),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              message.sender,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              message.time,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          message.preview,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}

class MessageDetailScreen extends StatelessWidget {
  final Message message;

  const MessageDetailScreen({Key? key, required this.message})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F1F1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: message.avatarColor,
              radius: 18,
              child: Icon(Icons.person, color: Colors.white, size: 18),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                message.sender,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First message (recharge notification)
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'continue services, please recharge NOW.',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Icon(
                                Icons.refresh,
                                size: 40,
                                color: Colors.grey[600],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Tap to load preview',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),

                  // Main content message
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.fullContent,
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        SizedBox(height: 12),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Icon(
                                Icons.refresh,
                                size: 40,
                                color: Colors.grey[600],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Tap to load preview',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Duplicate message
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.fullContent,
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        SizedBox(height: 12),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Icon(
                                Icons.refresh,
                                size: 40,
                                color: Colors.grey[600],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Tap to load preview',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),

                  Spacer(),

                  // Bottom notice
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.grey[600],
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: "Can't reply to this short code. ",
                                ),
                                TextSpan(
                                  text: "Learn more",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
