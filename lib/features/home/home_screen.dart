import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10),

              // 🔝 Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Adeola 👋",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),

                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey.shade300,
                  )
                ],
              ),

              const SizedBox(height: 24),

              // 💰 Balance Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "₦245,000",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ⚡ Quick Actions
              const Text(
                "Quick Actions",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _actionItem(Icons.send, "Send"),
                  _actionItem(Icons.account_balance_wallet, "Wallet"),
                  _actionItem(Icons.receipt, "Bills"),
                  _actionItem(Icons.more_horiz, "More"),
                ],
              ),

              const SizedBox(height: 30),

              // 📊 Transactions
              const Text(
                "Recent Transactions",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              Expanded(
                child: ListView(
                  children: const [
                    _transactionItem("Transfer", "-₦20,000", true),
                    _transactionItem("Salary", "+₦150,000", false),
                    _transactionItem("Airtime", "-₦5,000", true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔘 Action Button
  Widget _actionItem(IconData icon, String label) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F6FA),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: AppColors.primary),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

// 💳 Transaction Widget
class _transactionItem extends StatelessWidget {
  final String title;
  final String amount;
  final bool isDebit;

  const _transactionItem(this.title, this.amount, this.isDebit);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 6),
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