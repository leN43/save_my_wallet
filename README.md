<br/>
<p align="center">
  <a href="https://github.com/audreypa/save_my_wallet">
    <img src="app/assets/images/cover.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">README</h3>

  <p align="center">
    Save My Wallet in the last Le Wagon's project made by Leslie, Niels, Quentin and Audrey.
    <br/>
    <br/>
  </p>
</p>

![Downloads](https://img.shields.io/github/downloads/audreypa/save_my_wallet/total) ![Contributors](https://img.shields.io/github/contributors/audreypa/save_my_wallet?color=dark-green) ![Forks](https://img.shields.io/github/forks/audreypa/save_my_wallet?style=social) ![Issues](https://img.shields.io/github/issues/audreypa/save_my_wallet)

## Table Of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Contributing](#contributing)
* [Authors](#authors)
* [Acknowledgements](#acknowledgements)

## About The Project
This mobile app made in two weeks aims to monitor daily expenses with gamification. Once the user records an expense, its city evolve according to different levels.
This project was made during Le Wagon Bootcamp. Built in two weeks, improvements are obviously necessary. Feel free to fork it and improve it if you want !
For data and expenses, please use the following virtual user:
email : liloo@lewagon.com
password : lewagon
url : www.savemyw.com

## Built With

This app was built with Ruby on Rails

* [Ruby on Rails](https://rubyonrails.org/)
* [Ruby](https://ruby-doc.org/3.2.2/)
* [Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
* [Phaserjs](https://phaser.io/)

## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

This project is a mobile app. To correctly use it, please go to www.savemyw.com on your mobile
and click to "add to home page" to get the icon app on your phone !


### Installation

1. Get a  API Key for cloudinary at [https://cloudinary.com/]

2. Clone the repo

```sh
git clone https://github.com/audreypa/save_my_wallet.git
```

3. Install packages

```sh
bundle install
```
4. Create db

```sh
rails db:drop db:create db:migrate db:seed
```

5. Enter your API Key for cloudinary in `.env`

```ruby
CLOUDINARY_URL = 'ENTER YOUR API';
```

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.
* If you have suggestions for adding or removing projects, feel free to [open an issue](https://github.com/audreypa/save_my_wallet/issues/new) to discuss it, or directly create a pull request after you edit the *README.md* file with necessary changes.
* Please make sure you check your spelling and grammar.
* Create individual PR for each suggestion.
* Please also read through the [Code Of Conduct](https://github.com/audreypa/save_my_wallet/blob/main/CODE_OF_CONDUCT.md) before posting your first idea as well.

### Creating A Pull Request

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Authors

* **Audrey** - ** - [Audrey](https://github.com/audreypa/) - **
* **Leslie** - ** - [Leslie](https://github.com/LeslieRds) - **
* **Quentin** - ** - [Quentin](https://github.com/Quentinrbd) - **
* **Niels** - ** - [Niels](https://github.com/leN43) - **
