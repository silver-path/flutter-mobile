import 'dart:math';
import '../data/Kith.dart';
import '../data/Court.dart';
import '../data/Background.dart';

class KithService {
  List<Kithain> kithains(Court court) {
    return [
      Kithain(
        name: 'Boggan',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/5/52/LogoKithBoggans.png/revision/latest/scale-to-width-down/200?cb=20150325195152',
        description:
            "Hearty, Homey, and Hospitable, the Boggans are fae born of crafters' dreams. They derive pleasure from honest, hard work, whether it be tending the hearth in a freehold or crafting something with their hands. As such, most Boggans take jobs as tradespeople or in freeholds.",
        affinities: [''],
        court: court,
        backgrounds: {
          'seelie': Background(
              url: 'https://ui-ex.com/images/gormander-clipart-jackie-5.jpg',
              position: Point(0.0, -0.8)),
          'unseelie': Background(
              url: 'https://pbs.twimg.com/media/DpvTXLNWwAoE0cw.jpg',
              position: Point(-0.3, -1.0)),
        },
      ),
      Kithain(
        name: 'Clurichaun',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/b/bc/KithClurichaun.png/revision/latest/scale-to-width-down/200?cb=20170503121058',
        description:
            "The Clurichaun are Gallain native to Ireland, although they can be found anywhere that Irish immigrants have made their homes. They once encouraged dreamers to associate them with leprechauns, something they now greatly regret.",
        affinities: [''],
        court: court,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/30/cd/fc/30cdfc610c011cd751572a1f571e016b.jpg',
              position: Point(0.0, -0.8)),
          'unseelie': Background(
              url: 'https://pbs.twimg.com/media/DGotoy3W0AABzxi.jpg',
              position: Point(0.0, -1.0)),
        },
      ),
      Kithain(
        name: 'Eshu',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/1/12/LogoKithEshu.png/revision/latest/scale-to-width-down/200?cb=20150325195304',
        description:
            "Born of dreams of exotic adventure, the ever-travelling Eshu originally hail from Africa, India, the Middle East, and the ancient state of Chaldea. Over the centuries, however, they spread and grew, and now come from all corners of the globe. Known for their tales of adventure and exotic lands, Eshu are charming and regal, having a special talent for weaving a good story.",
        affinities: [''],
        court: court,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e8b2192f-ec0d-4841-a611-ed511e4f434e/d7g9hrz-787d06f0-992d-4a65-a389-35bd2230a41b.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2U4YjIxOTJmLWVjMGQtNDg0MS1hNjExLWVkNTExZTRmNDM0ZVwvZDdnOWhyei03ODdkMDZmMC05OTJkLTRhNjUtYTM4OS0zNWJkMjIzMGE0MWIuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.vg68C7SuJ3StBLPkPg-d4D0s8XAm1-Zj1SoW12bLp7Q',
              position: Point(0.0, -0.8)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/4a/2c/45/4a2c455357cfa10efef7b43cf64c7e38.jpg',
              position: Point(-0.5, -1.0)),
        },
      ),
      Kithain(
        name: 'Piskey',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/8/86/KithPiskey.png/revision/latest/scale-to-width-down/200?cb=20170503121514',
        description:
            "Solitary and semi-nomadic, the Piskies are a restless kith. They like settling down for a couple years, working and socializing with both mortals and kithain, then moving on to new adventures. They are especially fond of children and tend to befriend youngsters in need of a pal or defender.",
        affinities: [''],
        court: court,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/84/64/c4/8464c4bb669035bc97d240684156b7a8.jpg',
              position: Point(-0.15, -1.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/c2/a8/92/c2a89273251a434aa39a10c871eb97e4.jpg',
              position: Point(-0.15, -1.0)),
        },
      ),
      Kithain(
        name: 'Pookah',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/d/d6/LogoKithPooka.png/revision/latest/scale-to-width-down/200?cb=20150325195621',
        description:
            "Pranksters and comedians, Pooka are well-loved by kithain and mortal alike, but few who know them will ever trust them completely: they are incapable of telling the whole truth. Each is able to take on the form of a specific animal, most often one with a tie to human stories of mischief.",
        affinities: [''],
        court: court,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/5d/06/d9/5d06d95e9baffae637528ef20840b151.jpg',
              position: Point(0.0, -1.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/03/f7/ba/03f7ba5413c42491a64651f69ba34a72.jpg',
              position: Point(0.0, 0.0)),
        },
      ),
//      Kithain(
//        name: '',
//        icon: '',
//        description: "",
//        affinities: [''],
//        court: court,
//        backgrounds: {
//          'seelie': Background(
//              url:
//              '',
//              position: Point(0.0, 0.0)),
//          'unseelie': Background(
//              url: '',
//              position: Point(0.0, 0.0)),
//        },
//      ),
    ];
  }

  List<Thallain> thallains() {
    return [
      Thallain(
        name: 'Boggart',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/5/52/LogoKithBoggans.png/revision/latest/scale-to-width-down/200?cb=20150325195152',
        description:
            "Boggarts place the well-being of their kind above the concerns of all other creatures. With a talent for getting organized, a very industrious spirit and an endless amount of greed, Boggarts can swarm over any opportunity like a horde of rats. Although they are quite willing to help the Shadow Court, they serve themselves first and foremost.",
        affinities: [''],
        background: Background(
            url:
                'https://i.pinimg.com/564x/20/e7/7a/20e77a584817d3c5abbe51c324795c86.jpg',
            position: Point(-1.0, -1.0)),
      ),
    ];
  }

  List<Kith> fetch(Court court) {
    if (court != Court.shadow) return kithains(court);
    return [kithains(court), thallains()].expand((x) => x).toList()
      ..sort((Kith a, Kith b) =>
          a.name.toLowerCase().compareTo(b.name.toLowerCase()));
//      LightKith(
//          'Satyr',
//          Category.kithain,
//          'https://vignette.wikia.nocookie.net/whitewolf/images/6/6a/KithSatyr.png/revision/latest/scale-to-width-down/150?cb=20150325195752',
//          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/545e093d-9419-4c90-9ec8-ba5ca0b7d144/dzru3l-4a129ec2-35d0-4b79-b58d-c8ffcb06cbbe.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzU0NWUwOTNkLTk0MTktNGM5MC05ZWM4LWJhNWNhMGI3ZDE0NFwvZHpydTNsLTRhMTI5ZWMyLTM1ZDAtNGI3OS1iNThkLWM4ZmZjYjA2Y2JiZS5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ._UpeL2lQIe7wByh22DxF7fa_sQMO5Lt3n4XoE6wIwpM',
//          "Satyrs are both wise and horny. They enjoy food, wine, philosophy, and the throwes of lust. Passionate to the end, they dive wholeheartedly into all they do, which mostly includes wine and parties. There are those who satiate their desires through the persuit of knowledge, and indeed the Satyrs can be some of the most intelligent of the Kithians with their debates, poetry, and music.",
//          position: Point(-0.6, 1.0)),
//      LightKith(
//          'Selkie',
//          Category.gallain,
//          'https://vignette.wikia.nocookie.net/whitewolf/images/3/3c/KithSelkie.png/revision/latest/scale-to-width-down/200?cb=20170503121946',
//          'https://i.pinimg.com/564x/12/05/c5/1205c5336b4f50e264527da7027f5313.jpg',
//          "Selkies are neither fae of the Overwater (like most Kithain) nor of the Undersea (like the Merfolk or Morganed), but of the continually shifting shoreline. They are also caught between two forms: seal and human, never precisely one or the other.",
//          position: Point(-0.15, -1.0)),
//      LightKith(
//          'Sluagh',
//          Category.kithain,
//          'https://vignette.wikia.nocookie.net/whitewolf/images/b/b4/LogoKithSluagh.png/revision/latest/scale-to-width-down/200?cb=20150325195943',
//          'https://i.pinimg.com/564x/cb/82/89/cb8289a6d8817134d3fa62a63d32403b.jpg',
//          "Called the underfolk by many, the sluagh are often pariahs even among other fae. Though rumors persist of underground catacombs and mazelike lairs, many sluagh prefer crumbling Victorian mansions to dank sewers. Places dark and forgotten, often with a mushroom garden, attract them.",
//          position: Point(0.0, -1.0)),
//      LightKith(
//          'Troll',
//          Category.kithain,
//          'https://vignette.wikia.nocookie.net/whitewolf/images/6/67/LogoKithTroll.png/revision/latest/scale-to-width-down/200?cb=20150325200048',
//          'https://preview.redd.it/anv08ww0l9611.jpg?width=640&crop=smart&auto=webp&s=04efbe1bfb58b34aef603c5e9aa67756edca9b1f',
//          "As long as there have been mountains, there have been trolls. Known as giants, titans, and many other names, no culture does not mention them. Mortal traditions record them as benefactor and enemy and both are correct.",
//          position: Point(-0.3, -1.0)),
//    ];
  }
}
