import 'dart:math';
import '../data/kith.dart';
import '../data/background.dart';
import 'dart:async';

class KithService {
  Future<List<Kithain>> kithains() async {
    return [
      Kithain(
        name: 'Boggan',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/5/52/LogoKithBoggans.png/revision/latest/scale-to-width-down/200?cb=20150325195152',
        unveiling:
        """Boggans are born of dreams of hearth and home. If roads go ever on, the goal is always the return. They derive their greatest pleasures from work and a job well done. Honest work, good company, and a regular routine are all they need. Of all the Kithain they are known for their honesty and integrity. It is said they are as honest as the dirt under their fingernails.""",
        affinity: 'Actor',
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description:
        """Hearty, Homey, and Hospitable, the Boggans are fae born of crafters' dreams. They derive pleasure from honest, hard work, whether it be tending the hearth in a freehold or crafting something with their hands. As such, most Boggans take jobs as tradespeople or in freeholds. Boggan nannies, construction workers, and factory workers are all common. Being valued for their skill with labour, many Sidhe prize them in their freeholds as treasured servants. In exchange for their servitude, Boggans recieve praise for their work, recognition, and most of all, overheard secrets. Boggans are notorious gossips who take note of the court machinations going on around them. Seelie do it out of "curiosity", Unseelie to save for a rainy day. The information they gather is relevant in the context of the comings and goings of nobles. With enough honest compliments to their work, one might be able to charm a tidbit or two out of a Boggan. They have an affinity to the Actor realm.""",
        overview: """There’s a little bit of boggan in everyone.
Everyone likes to learn a secret, or to tell one; even the freest of spirits needs a place to return to between one journey and the next. Boggans thrive in these spaces, in the comfort of home, and the bonds between friends. Dreams of an honest day’s work and a cozy living provided by it, this kith has long enjoyed helping those who appreciate their efforts. Whether finishing a craftsman’s work at the end of a long day, completing the chores of a busy housekeeper, or bringing together unlikely friendships and romances, tales of mysterious folk helping others are the heart and soul of boggan history.

While not exactly shy, boggans work best just out of notice. Tracing their history often involves looking just behind or to the side of the spotlight, but with a sufficiently practiced eye, picking out the patterns of a boggan’s helping hand is easy. Humble creatures, they often prefer to highlight the efforts of others. They might not speak directly of their influence, but they are always eager to tell the story, and usually have it firsthand. Even if they aren’t the main character of the story, there’s usually a boggan in the room where it happened.""",
        backgrounds: {
          'seelie': Background(
              url: 'https://ui-ex.com/images/gormander-clipart-jackie-5.jpg',
              position: Point(0.0, -0.8)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/16/f5/f1/16f5f1aac3904ca272f7480b27697256.jpg',
              position: Point(-0.3, -1.0)),
        },
      ),
      Kithain(
        name: 'Clurichaun',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/b/bc/KithClurichaun.png/revision/latest/scale-to-width-down/200?cb=20170503121058',
        unveiling:
            "The Clurichaun are Gallain native to Ireland, although they can be found anywhere that Irish immigrants have made their homes. They once encouraged dreamers to associate them with leprechauns, something they now greatly regret.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/30/cd/fc/30cdfc610c011cd751572a1f571e016b.jpg',
              position: Point(0.0, -1.0)),
          'unseelie': Background(
              url: 'https://pbs.twimg.com/media/DGotoy3W0AABzxi.jpg',
              position: Point(0.0, -1.0)),
        },
      ),
      Kithain(
        name: 'Eshu',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/1/12/LogoKithEshu.png/revision/latest/scale-to-width-down/200?cb=20150325195304',
        unveiling:
            "Born of dreams of exotic adventure, the ever-travelling Eshu originally hail from Africa, India, the Middle East, and the ancient state of Chaldea. Over the centuries, however, they spread and grew, and now come from all corners of the globe. Known for their tales of adventure and exotic lands, Eshu are charming and regal, having a special talent for weaving a good story.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
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
        name: 'Nocker',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/3/38/LogoKithNockers.png/revision/latest/scale-to-width-down/200?cb=20150325195454',
        unveiling:
            "Nockers are the artisans among the Kithain, able to craft the stuff of dreams into whatever they desire. Their creations are always flawed, however, and their knowledge of this curse makes them irritable and quick to anger.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/3c/ad/34/3cad3452b0b3cfc59deede7c18dfa0c8.jpg',
              position: Point(0.0, 6.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/bc/4d/8c/bc4d8c8e6da8500a4279757b46c7d27a.jpg',
              position: Point(1.0, -0.5)),
        },
      ),
      Kithain(
        name: 'Piskey',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/8/86/KithPiskey.png/revision/latest/scale-to-width-down/200?cb=20170503121514',
        unveiling:
            "Solitary and semi-nomadic, the Piskies are a restless kith. They like settling down for a couple years, working and socializing with both mortals and kithain, then moving on to new adventures. They are especially fond of children and tend to befriend youngsters in need of a pal or defender.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
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
        unveiling:
            "Pranksters and comedians, Pooka are well-loved by kithain and mortal alike, but few who know them will ever trust them completely: they are incapable of telling the whole truth. Each is able to take on the form of a specific animal, most often one with a tie to human stories of mischief.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/5d/06/d9/5d06d95e9baffae637528ef20840b151.jpg',
              position: Point(0.0, -1.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/03/f7/ba/03f7ba5413c42491a64651f69ba34a72.jpg',
              position: Point(-0.5, -2.0)),
        },
      ),
      Kithain(
        name: 'Redcap',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/f/fd/LogoKithRedcaps.png/revision/latest/scale-to-width-down/200?cb=20150325195705',
        unveiling:
            "Fear and violence spawn dreams as readily as kings or commoners, and the Redcaps are the kithain most closely tied to nightmares. They gain their name from their traditional headwear - a white cap, dyed red in their victims' blood. They are quick to anger and hungry. Always hungry.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/0f/5f/4a/0f5f4a6655c522e3d33311d55092c03c.jpg',
              position: Point(-0.5, -1.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/ac/d6/7d/acd67df14267459ab2ad3e37abefc511.jpg',
              position: Point(0.0, 0.0)),
        },
      ),
      Kithain(
        name: 'Satyr',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/6/6a/KithSatyr.png/revision/latest/scale-to-width-down/150?cb=20150325195752',
        unveiling:
            "Satyrs are both wise and horny. They enjoy food, wine, philosophy, and the throwes of lust. Passionate to the end, they dive wholeheartedly into all they do, which mostly includes wine and parties. There are those who satiate their desires through the persuit of knowledge, and indeed the Satyrs can be some of the most intelligent of the Kithians with their debates, poetry, and music.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/545e093d-9419-4c90-9ec8-ba5ca0b7d144/dzru3l-4a129ec2-35d0-4b79-b58d-c8ffcb06cbbe.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzU0NWUwOTNkLTk0MTktNGM5MC05ZWM4LWJhNWNhMGI3ZDE0NFwvZHpydTNsLTRhMTI5ZWMyLTM1ZDAtNGI3OS1iNThkLWM4ZmZjYjA2Y2JiZS5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ._UpeL2lQIe7wByh22DxF7fa_sQMO5Lt3n4XoE6wIwpM',
              position: Point(-0.6, 1.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/df/a2/ff/dfa2ffb3a4e9031d9c0bb65a41b97f4a.jpg',
              position: Point(-1.0, -1.0)),
        },
      ),
      Kithain(
        name: 'Selkie',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/3/3c/KithSelkie.png/revision/latest/scale-to-width-down/200?cb=20170503121946',
        unveiling:
            "Selkies are neither fae of the Overwater (like most Kithain) nor of the Undersea (like the Merfolk or Morganed), but of the continually shifting shoreline. They are also caught between two forms: seal and human, never precisely one or the other.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/12/05/c5/1205c5336b4f50e264527da7027f5313.jpg',
              position: Point(-0.15, -1.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/3e/a2/a0/3ea2a0dcf4ce6a62d1731740fc6f96b2.jpg',
              position: Point(-0.8, -1.0)),
        },
      ),
      Kithain(
        name: 'Sidhe',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/c/cf/LogoKithSidhe.png/revision/latest?cb=20150325195829',
        unveiling:
            "The Sidhe are the kith born of the dreams of kings and queens - both noble and otherwise. Regal, beautiful and graceful, they are power and coldness personified. They are tied intimately to the Dreaming and are new to the Changeling Way; most of the Sidhe on Earth are either exiles or escapees from Arcadia, unable to return home.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description:
            "The Sidhe are the kith born of the dreams of kings and queens - both noble and otherwise. Regal, beautiful and graceful, they are power and coldness personified. They are tied intimately to the Dreaming and are new to the Changeling Way; most of the Sidhe on Earth are either exiles or escapees from Arcadia, unable to return home. As a result, they feel the cold sting of Banality far more harshly than commoner kithain, but they still command both the Seelie and Unseelie courts and are determined to survive the coming of Winter.",
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/4a/4e/09/4a4e097f9a92213fdbba1585aca11d09.jpg',
              position: Point(-0.15, -1.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/78/d3/48/78d348b3e8041fc611ec6ca4168609b6.jpg',
              position: Point(-0.8, -1.0)),
        },
      ),
      Kithain(
        name: 'Sluagh',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/b/b4/LogoKithSluagh.png/revision/latest/scale-to-width-down/200?cb=20150325195943',
        unveiling:
            "Called the underfolk by many, the sluagh (SLOO-ah) are often pariahs even among other fae. Though rumors persist of underground catacombs and mazelike lairs, many sluagh prefer crumbling Victorian mansions to dank sewers. Places dark and forgotten, often with a mushroom garden, attract them.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://i.pinimg.com/564x/ef/aa/d9/efaad959537d6636b5780baee404c71a.jpg',
              position: Point(0.0, -0.8)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/cb/82/89/cb8289a6d8817134d3fa62a63d32403b.jpg',
              position: Point(0.2, 0.0)),
        },
      ),
      Kithain(
        name: 'Troll',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/6/67/LogoKithTroll.png/revision/latest/scale-to-width-down/200?cb=20150325200048',
        unveiling:
            "As long as there have been mountains, there have been trolls. Known as giants, titans, and many other names, no culture does not mention them. Mortal traditions record them as benefactor and enemy and both are correct.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        backgrounds: {
          'seelie': Background(
              url:
                  'https://preview.redd.it/anv08ww0l9611.jpg?width=640&crop=smart&auto=webp&s=04efbe1bfb58b34aef603c5e9aa67756edca9b1f',
              position: Point(-0.3, -1.0)),
          'unseelie': Background(
              url:
                  'https://i.pinimg.com/564x/6a/62/24/6a622422d672473e9ca7efeb54ca6a47.jpg',
              position: Point(-0.1, -1.0)),
        },
      ),
//      Kithain(
//        name: '',
//        icon: '',
//        unveiling: "",
//        affinity: null,
//        court: court,
//        decoration: decoration,
//        description: null,
//        overview: null,
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

  Future<List<Thallain>> thallains() async {
    return [
      Thallain(
        name: 'Boggart',
        icon:
            'https://vignette.wikia.nocookie.net/whitewolf/images/5/52/LogoKithBoggans.png/revision/latest/scale-to-width-down/200?cb=20150325195152',
        unveiling:
            "Boggarts place the well-being of their kind above the concerns of all other creatures. With a talent for getting organized, a very industrious spirit and an endless amount of greed, Boggarts can swarm over any opportunity like a horde of rats. Although they are quite willing to help the Shadow Court, they serve themselves first and foremost.",
        affinity: null,
        decoration:
            'https://i.pinimg.com/564x/d3/3a/97/d33a97887b5905a04a8b62686492e315.jpg',
        description: null,
        overview: null,
        background: Background(
            url:
                'https://i.pinimg.com/564x/20/e7/7a/20e77a584817d3c5abbe51c324795c86.jpg',
            position: Point(-1.0, -1.0)),
      ),
    ];
  }

  Future<List<Kith>> kiths() async {
    final List<Kithain> kithains = await this.kithains();
    final List<Thallain> thallains = await this.thallains();
    return [kithains, thallains].expand((x) => x).toList()
      ..sort((Kith a, Kith b) =>
          a.name.toLowerCase().compareTo(b.name.toLowerCase()));
  }
}
