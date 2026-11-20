# Rayan Furniture App

A Flutter mobile app for browsing the Rayan Furniture catalogue. It is the app version of my [Rayan Furniture website](https://github.com/S-Ayo1) (built with React and Vite), and I built it as a hands-on way to practise Flutter and Dart.

Customers can browse furniture, view photos and details, watch videos about the business, and contact Rayan Furniture directly on WhatsApp.

## Features

- **Home screen**
  - Auto-fading banner that switches pictures every few seconds
  - Horizontal rows of furniture cards (Trending, Top Rated)
  - Maintenance row with care-instruction slides that open full screen and can be zoomed
- **Details screen**
  - Big picture with clickable thumbnails to switch between photos
  - Price, material, size and colour
  - "Contact to order" button that opens WhatsApp with the item name already typed in
- **About screen**
  - Video thumbnails laid out in rows (one wide video and three tall ones)
  - Videos play inside the app
- **Contact screen**
  - Tap to call, WhatsApp, email, and shop address
- **Navigation and look**
  - Bottom navigation bar (Home, About, Contact)
  - Brown theme applied across the whole app

## Built with

- [Flutter](https://flutter.dev) and Dart
- [`url_launcher`](https://pub.dev/packages/url_launcher) for WhatsApp, phone and email links
- [`youtube_player_iframe`](https://pub.dev/packages/youtube_player_iframe) for playing YouTube videos inside the app

## Project structure

```
lib/
  main.dart                 App start, theme and bottom navigation
  furniture_item.dart       FurnitureItem class and the furniture list
  home_banner.dart          Auto-fading banner
  furniture_row.dart        Reusable horizontal row of furniture cards
  maintenance_row.dart      Row of maintenance slides
  image_viewer_screen.dart  Full-screen zoomable picture
  details_screen.dart       Item details, gallery and WhatsApp button
  about_screen.dart         About page with video thumbnails
  video_screen.dart         In-app YouTube player
  contact_screen.dart       Contact details
assets/
  images/                   Furniture, banner, logo and maintenance pictures
```

## Getting started

You need [Flutter](https://docs.flutter.dev/get-started/install) installed.

```bash
git clone https://github.com/S-Ayo1/rayan_furniture_app.git
cd rayan_furniture_app
flutter pub get
flutter run
```

To run it in the browser, use `flutter run -d chrome`.


## What I practised

- Building screens with `StatelessWidget` and `StatefulWidget`
- Updating the screen with `setState`
- Passing data between screens with `Navigator`
- Reusable widgets, lists and loops
- Timers and animation (`AnimatedSwitcher`)
- Opening links and apps with `url_launcher`
- Playing videos with `youtube_player_iframe`

## Author

**Sherif Ayo**
GitHub: [@S-Ayo1](https://github.com/S-Ayo1)