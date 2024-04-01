# Flutter Movie

Flutter Movie is a Flutter project designed to showcase a collection of movies using various APIs. The application fetches movie data and displays it in an interactive and user-friendly interface.

# Features

**Movie Browsing**: Users can browse through a list of movies fetched from an API.
**Movie Details**: Clicking on a movie displays detailed information about it.
**Responsive Design**: The app is designed to work on both mobile and tablet devices.


# Dependencies

**The project uses the following packages**:

**equatable**: For simplifying object comparisons.
**vexana**: For network requests and API interactions.
**cached_network_image**: For efficient image loading and caching.
**json_annotation & json_serializable**: For JSON serialization and deserialization.
**easy_logger & logger**: For logging.
**kartal**: For simplifying common Flutter tasks.
**google_fonts**: For using custom fonts.
**carousel_slider**: For creating image carousels.
**lottie**: For displaying Lottie animations.
**flutter_svg**: For rendering SVG images.
**http & dio**: For making HTTP requests.

https://github.com/nugaysamil/flutter_movie/assets/106466382/eb3541cc-d5d3-4f42-8ca9-89f7370d9316

# Overview

The application's main screen displays a list of movies fetched from an API. Each movie is presented in a card with its title, poster image, and rating. Users can tap on a movie to see more details, such as the release date, overview, and cast. The app also includes a search feature that allows users to find movies by title.

# Architecture

The project follows a simple MVC (Model-View-Controller) architecture:

**Model**: Represents the data structure and handles data manipulation.
**View**: Displays the UI and responds to user interactions.
**Controller**: Connects the model and view, handling business logic.



