import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/dimensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = AppSizes.width(context);
    final h = AppSizes.height(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: h * 0.02),

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Adeola 👋",
                        style: TextStyle(
                          fontSize: AppSizes.fontMedium(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: h * 0.005),
                      const Text(
                        "Welcome back",
                        style: TextStyle(color: AppColors.textSecondary),
                      ),
                    ],
                  ),
                  CircleAvatar(radius: w * 0.06),
                ],
              ),

              SizedBox(height: h * 0.03),

              // Balance Card
              Container(
                padding: EdgeInsets.all(w * 0.05),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(w * 0.05),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Total Balance",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: h * 0.01),
                    Text(
                      "₦245,000",
                      style: TextStyle(
                        fontSize: AppSizes.fontLarge(context),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: h * 0.03),

              // Actions
              Text(
                "Quick Actions",
                style: TextStyle(
                  fontSize: AppSizes.fontMedium(context),
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: h * 0.015),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _action(context, Icons.send, "Send"),
                  _action(context, Icons.wallet, "Wallet"),
                  _action(context, Icons.receipt, "Bills"),
                  _action(context, Icons.more_horiz, "More"),
                ],
              ),

              SizedBox(height: h * 0.03),

              // Transactions
              Text(
                "Recent Transactions",
                style: TextStyle(
                  fontSize: AppSizes.fontMedium(context),
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: h * 0.015),

              Expanded(
                child: ListView(
                  children: [
                    _transaction(context, "Transfer", "-₦20,000", true),
                    _transaction(context, "Salary", "+₦150,000", false),
                    _transaction(context, "Airtime", "-₦5,000", true),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _action(BuildContext context, IconData icon, String label) {
    final w = AppSizes.width(context);

    return Column(
      children: [
        Container(
          height: w * 0.14,
          width: w * 0.14,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F6FA),
            borderRadius: BorderRadius.circular(w * 0.04),
          ),
          child: Icon(icon, color: AppColors.primary),
        ),
        SizedBox(height: w * 0.02),
        Text(label, style: TextStyle(fontSize: w * 0.03)),
      ],
    );
  }

  Widget _transaction(
      BuildContext context, String title, String amount, bool isDebit) {
    final w = AppSizes.width(context);

    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: w * 0.015),
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFF5F6FA),
        child: Icon(
          isDebit ? Icons.arrow_upward : Icons.arrow_downward,
          color: isDebit ? Colors.red : Colors.green,
        ),
      ),
      title: Text(title),
      trailing: Text(
        amount,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: isDebit ? Colors.red : Colors.green,
        ),
      ),
    );
  }
}