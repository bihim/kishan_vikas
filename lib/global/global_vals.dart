import 'package:flutter/material.dart';
import 'package:kishan_vikas/models/chat_model.dart';
import 'package:kishan_vikas/models/drawer_items_model.dart';
import 'package:kishan_vikas/models/drawer_social_icon_model.dart';
import 'package:kishan_vikas/models/home_grid_model.dart';
import 'package:kishan_vikas/models/home_items_model.dart';
import 'package:kishan_vikas/models/notification_model.dart';
import 'package:kishan_vikas/view/account/screen/account_screen.dart';
import 'package:kishan_vikas/view/chat/screen/chat_screen.dart';
import 'package:kishan_vikas/view/home/screen/home_screen.dart';
import 'package:kishan_vikas/view/post_add/screen/post_add_screen.dart';
import 'package:kishan_vikas/view/wishlist/screen/wishlist_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ionicons/ionicons.dart';

class GlobalVals {
  static const homeFormBackgroundColor = Color(0xFFED1B24);

  static var bottomNavScreens = [
    HomeScreen(),
    WishListScreen(),
    PostAddScreen(),
    ChatScreen(),
    AccountScreen(),
  ];

  static var bottomNavAnimatedScreens = [
    HomeScreen(),
    WishListScreen(),
    ChatScreen(),
    AccountScreen(),
  ];

  static var demoHomeGridValues = [
    HomeGridModel(
      id: 1,
      name: "New Tractor",
      imageUrl: "assets/grid1.jpeg",
    ),
    HomeGridModel(
      id: 2,
      name: "Old Tractor",
      imageUrl: "assets/grid2.jpeg",
    ),
    HomeGridModel(
      id: 3,
      name: "Tyres",
      imageUrl: "assets/grid3.jpeg",
    ),
    HomeGridModel(
      id: 4,
      name: "Implements",
      imageUrl: "assets/grid4.jpeg",
    ),
    HomeGridModel(
      id: 5,
      name: "Seeds",
      imageUrl: "assets/grid5.jpeg",
    ),
    HomeGridModel(
      id: 6,
      name: "Pesticides and Fertilizers",
      imageUrl: "assets/grid6.jpeg",
    ),
  ];

  static final List<String> imgList = [
    'https://images.unsplash.com/photo-1533062618053-d51e617307ec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1558906307-1a1c52b5ac8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1052&q=80',
    'https://images.unsplash.com/photo-1630992866107-e3265545dc39?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1533241242276-46a506b40d66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1190&q=80',
    'https://images.unsplash.com/photo-1614977645540-7abd88ba8e56?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dHJhY3RvcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1615811361523-6bd03d7748e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1613062500018-7b2515c9c40b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1605250715107-4328d0464f79?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
  ];

  static final List<Widget> imageSliders = imgList
      .map(
        (item) => Container(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(1.h),
              ),
              child: Image.network(
                item,
                fit: BoxFit.cover,
                width: 200.w,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      )
      .toList();

  static var demoHomeGridValuesSVG = [
    HomeGridModel(
      id: 1,
      name: "New Tractor",
      imageUrl: "assets/new_tractor.svg",
    ),
    HomeGridModel(
      id: 2,
      name: "Old Tractor",
      imageUrl: "assets/old_tractor.svg",
    ),
    HomeGridModel(
      id: 3,
      name: "Tyres",
      imageUrl: "assets/tyre.svg",
    ),
    HomeGridModel(
      id: 4,
      name: "Implements",
      imageUrl: "assets/lawn-mower.svg",
    ),
    HomeGridModel(
      id: 5,
      name: "Seeds",
      imageUrl: "assets/seeds.svg",
    ),
    HomeGridModel(
      id: 6,
      name: "Pesticides and Fertilizers",
      imageUrl: "assets/fertilizer.svg",
    ),
    HomeGridModel(
      id: 7,
      name: "View All",
      imageUrl: "assets/menu.svg",
    ),
  ];

  static var demoLocations = [
    "Mumbai",
    "Delhi",
    "Bengaluru",
    "Kolkata",
    "Chennai",
    "Ahmedabad",
    "Hyderabad",
    "Pune",
    "Surat",
    "Kanpur",
    "Jaipur",
    "Navi Mumbai",
    "Lucknow",
    "Nagpur",
    "More Cities>>",
  ];

  static var demoProductListing = [
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product1.png",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product2.JPG",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product1.png",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product2.JPG",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product1.png",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product2.JPG",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product1.png",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product2.JPG",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product1.png",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
    HomeItemsModel(
        id: 1,
        imageItem: 1,
        imageUrl: "assets/product2.JPG",
        productTitle: "Lethal Super 505",
        productDate: "Aug 24th, 2021 at 15:36",
        productDescription: "Pesticides and Fertilizer",
        location: "Kolkata",
        price: "300",
        isWishListed: false),
  ];

  static var drawerIcons = [
    DrawerSocialIconModel(
        id: 1, iconName: Ionicons.logo_facebook, iconColor: 0xFF4267B2),
    DrawerSocialIconModel(
        id: 2, iconName: Ionicons.logo_twitter, iconColor: 0xFF1DA1F2),
    DrawerSocialIconModel(
        id: 3, iconName: Ionicons.logo_pinterest, iconColor: 0xFFE60023),
    DrawerSocialIconModel(
        id: 4, iconName: Ionicons.logo_linkedin, iconColor: 0xFF0077b5),
    DrawerSocialIconModel(
        id: 5, iconName: Ionicons.logo_youtube, iconColor: 0xFFFF0000),
  ];

  static var chatLists = [
    ChatModel(
        chatId: 1,
        profileUrl: "assets/product1.png",
        userName: "User One",
        productName: "Pesticides",
        message: "This is new one",
        date: "31 Aug 12:47 AM"),
    ChatModel(
        chatId: 1,
        profileUrl: "assets/product2.JPG",
        userName: "User One",
        productName: "Pesticides",
        message: "This is new one",
        date: "31 Aug 12:47 AM"),
    ChatModel(
        chatId: 1,
        profileUrl: "assets/product1.png",
        userName: "User One",
        productName: "Pesticides",
        message: "This is new one",
        date: "31 Aug 12:47 AM"),
    ChatModel(
        chatId: 1,
        profileUrl: "assets/product2.JPG",
        userName: "User One",
        productName: "Pesticides",
        message: "This is new one",
        date: "31 Aug 12:47 AM"),
    ChatModel(
        chatId: 1,
        profileUrl: "assets/product1.png",
        userName: "User One",
        productName: "Pesticides",
        message: "This is new one",
        date: "31 Aug 12:47 AM"),
    ChatModel(
        chatId: 1,
        profileUrl: "assets/product1.png",
        userName: "User One",
        productName: "Pesticides",
        message: "This is new one",
        date: "31 Aug 12:47 AM"),
    ChatModel(
        chatId: 1,
        profileUrl: "assets/product1.png",
        userName: "User One",
        productName: "Pesticides",
        message: "This is new one",
        date: "31 Aug 12:47 AM"),
  ];

  static var drawerItems = [
    DrawerItemModel(id: 1, name: "Categories", icon: Icons.widgets_outlined),
    DrawerItemModel(
        id: 2, name: "Favorites", icon: Icons.favorite_outline_outlined),
    DrawerItemModel(id: 3, name: "My Ads", icon: Icons.library_add_outlined),
    DrawerItemModel(id: 4, name: "Chats", icon: Icons.chat_outlined),
    DrawerItemModel(id: 5, name: "Pages", icon: Icons.layers_outlined),
    DrawerItemModel(id: 6, name: "Settings", icon: Icons.settings_outlined),
    DrawerItemModel(id: 7, name: "Contact", icon: Icons.call_outlined),
    DrawerItemModel(id: 8, name: "Logout", icon: Icons.logout_outlined),
  ];
  static var subCategories = [
    "TATA Tractor",
    "BMW Tractor",
    "Cheap Tractor",
    "Small Tractor",
    "Heavy Duty Tractor"
  ];
  static var notificationData = [
    NotificationModel(
        id: 1,
        date: "12 Aug, 2021 12:24pm",
        title: "Buy new tractor at cheap price",
        subtitle: "You can buy it with 0% interest rate"),
        NotificationModel(
        id: 1,
        date: "12 Aug, 2021 12:24pm",
        title: "Buy new tractor at cheap price",
        subtitle: "You can buy it with 0% interest rate"),
        NotificationModel(
        id: 1,
        date: "12 Aug, 2021 12:24pm",
        title: "Buy new tractor at cheap price",
        subtitle: "You can buy it with 0% interest rate"),NotificationModel(
        id: 1,
        date: "12 Aug, 2021 12:24pm",
        title: "Buy new tractor at cheap price",
        subtitle: "You can buy it with 0% interest rate"),
        NotificationModel(
        id: 1,
        date: "12 Aug, 2021 12:24pm",
        title: "Buy new tractor at cheap price",
        subtitle: "You can buy it with 0% interest rate"),
  ];
}
