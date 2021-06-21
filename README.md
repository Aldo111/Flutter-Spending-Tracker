# Spending Tracker Flutter Home Screen

This Flutter project recreates a minimal home screen design for a spending tracker app. The mockup was created by [@elainelumanauw.design](https://dribbble.com/shots/15855398-UI-Mobile-Spending-Tracker-App) on Dribble.

I saw the mockup on instagram in one of Elaine's reels and thought it would be cool to try recreating it functionally in Flutter. 

## What it looks like in Flutter
<img src="https://imgur.com/wa2Ns7S.png" width=350>

## The original design mocks
<img src="https://i.imgur.com/zruQIlv.png" width=350>


## Running this project

`flutter run` in the project directory.

## Project Structure
The files specifically added/edited for the project are:

- assets
    - ...images for the 3 categories
- lib/constants
    - `app_colors.dart`, which contains an abstracts constants-encapsulating class for some common colors.
- lib/models
    - `spending_category_model.dart` to encapsulate information about each category
- lib/screens
    - `home_screen.dart`, which contains the main/home screen of the app.
- lib/widgets
    - ...All the widgets used in the home screen
- lib/main.dart