import 'package:fixify/constant/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 360;

    // Services data
    final List<Map<String, dynamic>> services = [
      {'name': 'Plumbing', 'icon': Icons.water_drop_outlined},
      {'name': 'Electrical', 'icon': Icons.electric_bolt_outlined},
      {'name': 'Cleaning', 'icon': Icons.cleaning_services_outlined},
      {'name': 'AC Repair', 'icon': Icons.ac_unit_outlined},
      {'name': 'Appliances', 'icon': Icons.grid_view_rounded},
      {'name': 'Carpentry', 'icon': Icons.handyman_outlined},
      {'name': 'Painting', 'icon': Icons.format_paint_outlined},
      {'name': 'Gardening', 'icon': Icons.yard_outlined},
      {'name': 'Handyman', 'icon': Icons.build_outlined},
    ];

    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.045,
            vertical: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              const Text(
                'YOUR HOME, SORTED',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.6,
                  color: AppColors.primaryDark,
                ),
              ),

              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Kaamly',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      color: AppColors.primaryDark,
                    ),
                  ),
                ],
              ),

              // LOCATION
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 15,
                    color: AppColors.primaryDark,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Home · Indiranagar, Bengaluru',
                    style: TextStyle(fontSize: 11, color: AppColors.primary),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // SEARCH BAR
              Container(
                height: 46,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search_rounded,
                      color: AppColors.secondary,
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What can we help with?',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: AppColors.secondary.withOpacity(0.8),
                          ),
                          border: InputBorder.none,
                          isCollapsed: true,
                        ),
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              // PROMOTIONAL BANNER
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(size.width * 0.045),
                decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.mint,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'TRUSTED LOCAL HELP',
                        style: TextStyle(
                          color: AppColors.primaryDark,
                          fontSize: 8,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      'Less to do.\nMore living.',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: isSmallScreen ? 21 : 24,
                        fontWeight: FontWeight.w800,
                        height: 1.05,
                      ),
                    ),

                    const SizedBox(height: 7),

                    const Text(
                      'Book reliable experts right in your neighborhood.',
                      style: TextStyle(color: AppColors.white, fontSize: 10),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // SERVICES HEADING
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Explore services',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // SERVICES GRID
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: services.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 9,
                  childAspectRatio: isSmallScreen ? 1.35 : 1.25,
                ),
                itemBuilder: (context, index) {
                  final service = services[index];

                  return InkWell(
                    onTap: () {
                      // Navigate to service providers screen
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            service['icon'] as IconData,
                            size: isSmallScreen ? 19 : 22,
                            color: AppColors.primaryDark,
                          ),
                          const SizedBox(height: 7),
                          Text(
                            service['name'] as String,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: isSmallScreen ? 9 : 10,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              // TRUST CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: AppColors.mint.withOpacity(0.55),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.verified_user_outlined,
                      color: AppColors.primaryDark,
                      size: 23,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Good people. Great work.',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryDark,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Verified experts • Convenient booking',
                            style: TextStyle(
                              fontSize: 9,
                              color: AppColors.primary.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
