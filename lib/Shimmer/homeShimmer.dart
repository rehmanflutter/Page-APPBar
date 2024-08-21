import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeShmmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(),
                title: Row(
                  children: [
                    Container(
                      height: media.size.height * 0.01,
                      width: media.size.width * 0.4,
                      color: Colors.grey,
                    ),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Container(
                      height: media.size.height * 0.01,
                      width: media.size.width * 0.2,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                height: media.size.height * 0.3,
                //     color: Colors.amber,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 100),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: media.size.height * 0.02,
                              width: media.size.width * 0.3,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: media.size.height * 0.02,
                              width: media.size.width * 0.1,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: media.size.height * 0.2,
                width: media.size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: media.size.height * 0.04,
                        width: media.size.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(12)),
                        ),
                      ),
                    ),
                    Container(
                      height: media.size.height * 0.02,
                      width: media.size.width * 0.6,
                      color: Colors.grey,
                    ),
                    SizedBox()
                  ],
                ),
              ),
              SizedBox(
                height: media.size.height * 0.07,
              ),
              Container(
                height: media.size.height * 0.06,
                width: media.size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




    // "verification_code":"Verification code",
    // "enter_the_verification_code_sent_to":"Enter the verification code sent to",
    // "resend_the_code_in":"Resend the code in",
    // "total_orders":"Total Orders",
    // "reviews":"Reviews",
    // "warnings":"Warnings",
    // "you_dont_have_any_active_order":"You don't have any active order",
    // "create_an_order":"Create an Order",
    // "orders":"Orders",
    // "home":"Home",
    // "account":"Account",
    // "order_details":"Order Details",
   
    // "edit_profile":"Edit Profile",
    // "update":"Update",
    // "full_name":"Full Name",
    // "date_of_birth":"Date of birth",
    // "gender":"Gender",
    // "select_date":"Select date",
    // "enter_your_name":"Enter your name",
    // "enter_your_email":"Enter your email",
    // "place_order":"Place Order",
    // "please_write_your_order_details":"Please Write your order Details",
    // "delivery_address":"Delivery Address",
    // "delivery_from":"Delivery From",
    // "pick_the_location":"Pick The Location",
    // "delivery_to":"Delivery To",
    // "payment_method":"Payment method",
    // "apple_pay":"Apple Pay",
    // "change":"Change",
    // "receiver":"Receiver",
    // "add":"Add",
    // "add_receiver":"Add Receiver",
    // "receiver_name":"Receiver Name",
    // "enter_receiver_name":"Enter Receiver Name",
    // "receiver_phone_no":"Receiver Phone no",
    // "save":"Save",
    // "pick_up_location":"Pick up Location",
    // "search_the_map":"Search the Map",
    // "add_a_picture_of_the_house_entrance":"Add a Picture of the house entrance",
    // "save_location_to_use_later":"Save Location to use Later",
    // "confirm_pick_up_location":"Confirm Pick up Location",
    // "waiting_for_offers":"Waiting for offers",
    // "estimated_delivery_offer":"Estimated Delivery Offer",
    // "please_wait":"Please Wait",
    // "let_us_accept_any_offer":"Let us accept any offer",
    // "lowest_price_today":"Lowest Price Today",
    // "cancel":"Cancel",
    // "accept":"Accept",

    // "verification_code":"Verification code",
    // "enter_the_verification_code_sent_to":"Enter the verification code sent to",
    // "resend_the_code_in":"Resend the code in",
    // "edit_profile":"Edit Profile",
    // "full_name":"Full Name",
    // "enter_your_name":"Enter your name",
    // "enter_your_email":"Enter your Email",
    // "date_of_birth":"Date Of Birth",
    // "select_date":"Select Date",
    // "gender":"Gender",
    // "update":"Update",
    // "total_orders":"Total Orders",
    // "reviews":"Reviews",
    // "warnings":"Warnings",
    // "you_dont_have_any_active_order":"You don't have any active Order",
    // "create_an_order":"Create an Order",
    // "orders":"Orders",
    // "home":"Home",
    // "account":"Account",
    // "place_order":"Place Order",
    // "order_details":"Order Details",
    // "please_write_your_order_details":"Please Write your order Details",
    // "delivery_address":"Delivery Address",
    // "delivery_from":"Delivery From",
    // "delivery_to":"Delivery To",
    // "pick_the_location":"Pick The Location",
    // "payment_method":"Payment Method",
    // "apple_pay":"Apple Pay",
    // "add":"Add",
    // "change":"Change",
    // "receiver":"Receiver",
    //  "waiting_for_offers":"Waiting for offers",
    // "estimated_delivery_offer":"Estimated Delivery Offer",
    // "please_wait":"Please Wait",
    // "lowest_price_today":"Lowest Price Today",
    // "accept":"Accept",
    // "save":"Save",
    // "pick_up_location":"Pick up Location",
    // "search_the_map":"Search the Map",
    // "add_a_picture_of_the_house_entrance":"Add a Picture of the house entrance",
    // "save_location_to_use_later":"Save Location to use Later",
    // "confirm_pick_up_location":"Confirm Pick up Location",
    // "cancel":"Cancel",
    // "add_receiver":"Add Receiver",
    // "receiver_name":"Receiver Name",
    // "receiver_phone_no":"Receiver Phone no",
    // "enter_receiver_name":"Enter Receiver Name",
    // "let_us_accept_any_offer":"Let us accept any offer",
