import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:api_with_elbono/core/features/checkOut/widgets/cash_on_delivery_widget.dart';
import 'package:api_with_elbono/core/features/checkOut/widgets/order_summary_widget.dart';
import 'package:api_with_elbono/core/features/checkOut/widgets/visa_widget.dart';
import 'package:api_with_elbono/core/features/successPayment/views/success_payment_view.dart';
import 'package:api_with_elbono/shared/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  int _selectedPaymentMethod = 0;
  bool _saveCardDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              const Gap(16),

              // Order Summary Section
              const OrderSummaryWidget(),

              const Gap(30),

              // Payment Methods Section
              Text(
                "Payment methods",
                style: AppTextStyles.black16w600.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(16),

              // Cash on Delivery Option
              CashOnDeliveryWidget(
                isSelected: _selectedPaymentMethod == 0,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 0;
                  });
                },
              ),
              const Gap(14),

              // Visa Widget Option
              VisaWidget(
                isSelected: _selectedPaymentMethod == 1,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 1;
                  });
                },
              ),
              const Gap(16),

              // Save Ca5rd Details Checkbox
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: _saveCardDetails,
                      activeColor: AppColors.error,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _saveCardDetails = value ?? false;
                        });
                      },
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "Save card details for future payments",
                    style: AppTextStyles.grey14w400.copyWith(
                      color: AppColors.textSecondary,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const Gap(110),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Column  (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total",style: AppTextStyles.black16w600.copyWith(fontSize: 20),),
                        Gap(10),
                        Text("\$18.19",style: AppTextStyles.black24w600,),
                      ],
                    ),
                    Spacer(),
                    CustomButton(
                      text: "Pay Now",
                      horizontal: 50,
                      vertical: 16,
                      right: 16,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessPaymentView(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
