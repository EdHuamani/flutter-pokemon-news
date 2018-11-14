class PokemonNew {
  final String id;
  final String title;
  final DateTime date;
  final String body;

  PokemonNew({this.id, this.title, this.date, this.body});
}

List<PokemonNew> news = [
  PokemonNew(
    id: '0',
    title:
        'Celebrate Ingress Prime’s launch with T-shirt avatar items at no cost!',
    date: DateTime.now().subtract(Duration(days: 8)),
    body:
        'Trainers,\n\nThe world of Ingress, the Niantic game which influenced the experience that Trainers enjoy in Pokémon GO, is changing right before our eyes! In celebration of Ingress Prime, a new mobile game out now, Trainers can sport special T-shirt avatar items, available at no cost in the Style Shop.\n\nThe three T-shirts have a futuristic style, and each has its own unique design—one includes the Ingress Prime logo, while the other two have the colors and designs representing the game’s two factions.\n\nPlus, as part of the celebration, Trainers will have an opportunity to encounter two Shiny Pokémon that have colors matching Ingress Prime’s factions—Shiny Ponyta, which has bright blue flames, and Shiny Cubone, which has a green body!\n\nSo celebrate this special milestone with us and try on a new look! Stay safe, and happy exploring!',
  ),
  PokemonNew(
    id: '1',
    title: 'Gengar steals the spotlight in a Special Raid Challenge!',
    date: DateTime.now().subtract(Duration(days: 9)),
    body:
        'Trainers,\n\nAre you ready for a challenge? On Saturday, November 3, there will be a Special Raid Challenge! For three hours, Gengar will be available in Raid Battles! Take a look at the details below by region:\n\nDate + Time\n\nNov. 3, 2018\nAsia-Pacific: 12:00 p.m. to 3:00 p.m. JST (GMT +9)\nEurope, the Middle East, Africa, and India: 10:00 a.m. to 1:00 p.m. UTC (GMT +0)\nThe Americas and Greenland: 11:00 a.m. to 2:00 p.m. PST (GMT −8)\nFeatures\n\nGengar will be featured in Raid Battles!\nReceive up to five Raid Passes from nearby Gyms at no cost.\nIf you’re lucky, you may encounter a Shiny Gengar!\nDo you have what it takes? Get ready to GO, Trainer—and best of luck! Stay safe, and happy exploring!',
  ),
  PokemonNew(
    id: '2',
    title: 'New Adventure Sync keeps track of all your journeys!',
    date: DateTime.now().subtract(Duration(days: 10)),
    body:
        'Trainers,\n\nExploring with Pokémon GO has never been easier with a new feature coming soon! Adventure Sync can record your walking distances even when Pokémon GO isn’t launched, working in the background to tally your distance, earn Candy, and hatch Eggs!\n\nPlus, Adventure Sync will deliver a weekly summary, where you can see your Incubator and Candy progress as well as important activity statistics. Check in via your Trainer Profile to see the number of kilometers recorded for the week. Earn rewards each week for each milestone you cross, and receive push notifications when your Buddy Pokémon has found a Candy or when an Egg is about to hatch!\n\nYou can opt into Adventure Sync at any time, and the feature will connect to both Apple Health on Apple devices and Google Fit on Android devices.\n\nSo let’s get motivated and GO! Stay safe, and happy exploring!',
  ),
  PokemonNew(
    id: '3',
    title: 'The Mythical Pokémon Meltan can evolve?!',
    date: DateTime.now().subtract(Duration(days: 11)),
    body:
        'Professor Willow and the Kanto region’s Professor Oak have made a new discovery about the Mythical Pokémon Meltan. According to their research, this Pokémon can evolve! Of all Mythical Pokémon that have been discovered thus far, Meltan appears to be the first to evolve. Ancient texts show that its Evolution is called Melmetal!\n\nBe sure the check out Professor Willow and Professor Oak’s latest research on Meltan’s biology here!',
  ),
  PokemonNew(
    id: '4',
    title: 'Have a haunting good time during Pokémon GO Halloween 2018!',
    date: DateTime.now().subtract(Duration(days: 12)),
    body:
        'Do you feel a change in the breeze? A chill down your spine? Pokémon GO Halloween is back for a spooky good time! Ghost-type and Dark-type Pokémon originally discovered in the Sinnoh region, such as Drifloon and Stunky, join in on the fun, which begins on October 23 at 1:00 p.m. PDT! And, because you can’t have tricks without any treats, Trainers will be able to earn double Candy for every Pokémon caught until November 1 at 1:00 p.m. PDT.\n\nDuring this event, it seems Professor Willow will need your help on some limited-time Special Research. He stumbled across an odd stone one day and has been experiencing strange happenings around his lab ever since! Could a Pokémon be causing this ruckus? Complete Special Research tasks and find out before whatever it is goes away! You’ll also be able to enjoy Field Research featuring Ghost-type and Dark-type Pokémon throughout the event.\n\nPlus, the Renegade Pokémon, Giratina, will make its first appearance in Raid Battles! This Ghost- and Dragon-type Legendary Pokémon originally discovered in the Sinnoh region has emerged from the Distortion World for an extended time, so challenge it before it leaves on November 20 at 1:00 p.m. PST!\n\nFeeling extra creepy and kooky? New avatar items featuring Ghost-type Pokémon are now available in the Style Shop! From a Drifloon Cap to a Gengar Backpack, you can show your love for these Pokémon all year round.\n\nSteel your nerves and get ready for some strange and scary fun times! Stay safe, and happy exploring!',
  ),
];
