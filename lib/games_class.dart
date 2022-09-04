class DataGames {
  String icon;
  String title;
  String studio;
  String sizeApp;
  String totalReview;
  List<String> previews;
  String description;
  String rating;

  DataGames(
      {required this.icon,
      required this.title,
      required this.studio,
      required this.sizeApp,
      required this.totalReview,
      required this.previews,
      required this.rating,
      required this.description,});
}

var listDataGame = [
  DataGames(
      icon: "images/games/ark/ark_icon.webp",
      title: "ARK: Survival Evolved",
      studio: "Studio Wildcard",
      sizeApp: "2.0 GB",
      totalReview: "4k",
      rating: "3.9",
      previews: [
        "images/games/ark/ark_1.webp",
        "images/games/ark/ark_2.webp",
        "images/games/ark/ark_3.webp",
        "images/games/ark/ark_4.webp",
        "images/games/ark/ark_5.webp",
        "images/games/ark/ark_6.webp",
      ],
      description:
          "Dive into the ultimate mobile dino-adventure with ARK: Survival Evolved! A massive game world combines with 80+ unique dinosaurs and primal creatures for you to capture and tame - making for a survival experience bar-none. Meet up with other players and friends in this Jurassic-era world, to form tribes and work together to build colonies of survivors."),
  DataGames(
      icon: "images/games/stardew/stardew.webp",
      title: "Stardew Valley",
      studio: "ConcernedApe",
      sizeApp: "295 MB",
      totalReview: "126K",
      rating: "4.5",
      previews: [
        "images/games/stardew/stardew_1.webp",
        "images/games/stardew/stardew_2.webp",
        "images/games/stardew/stardew_3.webp",
        "images/games/stardew/stardew_4.webp",
        "images/games/stardew/stardew_5.webp",
        "images/games/stardew/stardew_6.webp",
        "images/games/stardew/stardew_8.webp",
        "images/games/stardew/stardew_9.webp",
      ],
      description:
          "Move to the countryside, and cultivate a new life in this award-winning open-ended farming RPG! With over 50+ hours of gameplay content and new Mobile-specific features, such as auto-save and multiple controls options."),
  DataGames(
      icon: "images/games/pokemon/poke_icon.webp",
      title: "Pokémon UNITE",
      studio: "The Pokemon Company",
      sizeApp: "381 MB",
      totalReview: "1M",
      rating: "4.3",
      previews: [
        "images/games/pokemon/poke_1.webp",
        "images/games/pokemon/poke_2.webp",
        "images/games/pokemon/poke_3.webp",
        "images/games/pokemon/poke_4.webp",
        "images/games/pokemon/poke_5.webp",
        "images/games/pokemon/poke_6.webp",
        "images/games/pokemon/poke_7.webp",
        "images/games/pokemon/poke_8.webp",
      ],
      description:
          "Team up and take down the opposition in Pokémon’s first 5-on-5 strategic team battle game!. Join Trainers from around the world as they head for Aeos Island to compete in Unite Battles! In Unite Battles, Trainers face off in 5-on-5 team battles to see who can score the most points within the allotted time. Teamwork is key as you and your teammates defeat wild Pokémon, level up, evolve your own Pokémon, and work to prevent the opposing team from scoring points. Put your teamwork to the test, and take home the win!"),
  DataGames(
      icon: "images/games/wildrift/wildrift_icon.webp",
      title: "League of Legends: Wild Rift",
      studio: "Riot Games, Inc",
      sizeApp: "1.5 GB",
      totalReview: "2M",
      rating: "3.7",
      previews: [
        "images/games/wildrift/wildrift_1.webp",
        "images/games/wildrift/wildrift_2.webp",
        "images/games/wildrift/wildrift_3.webp",
        "images/games/wildrift/wildrift_4.webp",
        "images/games/wildrift/wildrift_5.webp",
        "images/games/wildrift/wildrift_6.webp",
      ],
      description:
          "Gameplay 5v5 MOBA League of Legends oleh Riot Games, dibangun dari bawah ke atas untuk pertempuran PvP seluler. Selami Wild Rift, game arena pertempuran 5v5 dengan aksi MOBA yang seru, dimana keterampilan dan strategi pertempuran arena kamu akan diuji."),
  DataGames(
      icon: "images/games/arknights/arknight_icon.webp",
      title: "Arknights",
      studio: "Yostar Limited.",
      sizeApp: "1.6 GB",
      totalReview: "169K",
      rating: "4.0",
      previews: [
        "images/games/arknights/arknight_1.webp",
        "images/games/arknights/arknight_2.webp",
        "images/games/arknights/arknight_3.webp",
        "images/games/arknights/arknight_4.webp",
        "images/games/arknights/arknight_5.webp",
        "images/games/arknights/arknight_6.webp",
        "images/games/arknights/arknight_7.webp",
      ],
      description:
          "Take on the role of a key member of Rhodes Island, a pharmaceutical company that fights both a deadly infection and the unrest it leaves in its wake. Together with your leader Amiya, you’ll recruit Operators, train them, then assign them to various operations to protect the innocent and resist those who would thrust the world into turmoil.")
];
