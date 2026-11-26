import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/app/app_theme.dart';
import 'package:flutter/material.dart';

class BookingRequestScreen extends StatefulWidget {
  const BookingRequestScreen({super.key});

  @override
  State<BookingRequestScreen> createState() => _BookingRequestScreenState();
}

class _BookingRequestScreenState extends State<BookingRequestScreen> {
  List<Map<String, String>> requests = [
    {
      'id': 'REQ-101',
      'badge': 'NEW REQUEST',
      'title': 'Tap & leak repair',
      'customer': 'Ahmed',
      'schedule': 'Thu, 19 Nov · 11 am–1 pm',
      'window': '2-hour service window',
      'address': '42, 12th Main, Indiranagar',
      'subAddress': 'Apartment 302 · 2.1 km away',
      'verification': 'Verified customer · Phone number confirmed',
      'note': 'Kitchen tap has been leaking since yesterday. Please check the washer and water pressure.',
      'status': 'pending',
    },
    {
      'id': 'REQ-102',
      'badge': 'NEW REQUEST',
      'title': 'AC gas refill & cooling check',
      'customer': 'Sara Khan',
      'schedule': 'Fri, 20 Nov · 02–04 pm',
      'window': '2-hour service window',
      'address': '18, 5th Cross, Koramangala',
      'subAddress': 'Villa 7 · 3.4 km away',
      'verification': 'Verified customer · Phone number confirmed',
      'note': 'Split AC in the bedroom is blowing warm air since last night.',
      'status': 'pending',
    },
    {
      'id': 'REQ-103',
      'badge': 'NEW REQUEST',
      'title': 'Main switchboard repair',
      'customer': 'Bilal Raza',
      'schedule': 'Sat, 21 Nov · 09–11 am',
      'window': '2-hour service window',
      'address': '9, 80 Feet Road, HAL 2nd Stage',
      'subAddress': 'Floor 2 · 1.6 km away',
      'verification': 'Verified customer · Phone number confirmed',
      'note': 'Living room breaker trips whenever the microwave and geyser run together.',
      'status': 'pending',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final horizontalPadding = width > 600 ? (width - 550) / 2 : width * 0.05;

    final isDark = AppTheme.isDark(context);
    final background = AppTheme.backgroundColor(context);
    final surface = AppTheme.surfaceColor(context);
    final textPrimary = AppTheme.primaryTextColor(context);
    final textSecondary = AppTheme.secondaryTextColor(context);
    final softColor = isDark ? AppColors.darkCard : AppColors.mint;
    final actionColor = isDark ? AppColors.primaryLight : AppColors.primaryDark;

    final pendingCount = requests
        .where((item) => item['status'] == 'pending')
        .length;

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Booking requests',
                    style: TextStyle(
                      fontFamily: AppFonts.headingFont,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: textPrimary,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: softColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '$pendingCount pending',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: actionColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 24),
                  itemCount: requests.length,
                  itemBuilder: (context, index) {
                    final request = requests[index];
                    final status = request['status'] ?? 'pending';
                    final isLast = index == requests.length - 1;

                    return Padding(
                      padding: EdgeInsets.only(bottom: isLast ? 0 : 16),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: surface,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: isDark
                                ? AppColors.darkBorder
                                : AppColors.lightBorder,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: softColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        radius: 4,
                                        backgroundColor: actionColor,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        status == 'pending'
                                            ? request['badge']!
                                            : status.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: actionColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  request['id']!,
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: textSecondary,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              request['title']!,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textPrimary,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Booking From · ${request['customer']}',
                              style: TextStyle(
                                fontSize: 13,
                                color: textSecondary,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: background,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color: actionColor,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              request['schedule']!,
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: textPrimary,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              request['window']!,
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: textSecondary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: actionColor,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              request['address']!,
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: textPrimary,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              request['subAddress']!,
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: textSecondary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 14),
                                  Text(
                                    request['verification']!,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: actionColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 14),
                            Text(
                              'Customer’s note',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: textPrimary,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '“${request['note']}”',
                              style: TextStyle(
                                fontSize: 12.5,
                                height: 1.45,
                                color: textSecondary,
                              ),
                            ),
                            const SizedBox(height: 18),
                            if (status == 'pending')
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            requests[index]['status'] =
                                                'rejected';
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: background,
                                          foregroundColor: actionColor,
                                          elevation: 0,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 14,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              13,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Reject',
                                                style: TextStyle(
                                                  fontSize: 13.5,
                                                  fontWeight: FontWeight.w600,
                                                  color: actionColor,
                                                ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.close_rounded,
                                              size: 18,
                                              color: actionColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    flex: 3,
                                    child: SizedBox(
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            requests[index]['status'] =
                                                'accepted';
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              AppColors.primaryDark,
                                          foregroundColor: AppColors.white,
                                          elevation: 0,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 14,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              13,
                                            ),
                                          ),
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Accept booking',
                                                style: TextStyle(
                                                  fontSize: 13.5,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 4),
                                            Icon(
                                              Icons.arrow_forward,
                                              size: 19,
                                              color: AppColors.mint,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            else
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: status == 'accepted'
                                      ? AppColors.successLight
                                      : background,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      status == 'accepted'
                                          ? 'Booking accepted'
                                          : 'Booking rejected',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: status == 'accepted'
                                            ? AppColors.success
                                            : textSecondary,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          requests[index]['status'] = 'pending';
                                        });
                                      },
                                      child: Text(
                                        'Undo',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: actionColor,
                                        ),
                                      ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
