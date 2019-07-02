import 'dart:math';
import '../data/kith.dart';
import '../data/background.dart';
import 'dart:async';
import '../data/historical_detail.dart';

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
        history: [
          HistoricalDetail(
            title: 'the mythic age',
            content:
                """From their inception, boggans were among the fae who most regularly interacted with the mortals who had dreamt them into being. As humanity shifted away from serving their dark and hungry masters, the Fomorians, boggans served to offer a new way of life. Though still one of service and hard work, rather than claiming tribute or subjugating the blossoming culture, boggans began as the embodiment of hope for a better life forged by the labor of one’s own hands. Maybe not a glamorous life, but a free one, beholden to none.
Living free from the heavy yoke of the Fomorians, humanity could move ahead and better their lives, offering what they could and finally getting something useful in return. Content to help those who needed it, boggans served as a reminder never to be as greedy as the Fomorians, withholding their help from those who began displaying the same greedy appetite as the dark fae. They patiently guided and coaxed humanity along, encouraging some behavior and stifling others that went against this new dream.

As the conflict between the Tuatha de Danaan and the Fomorians grew all-encompassing, boggans still did what they could to reach out to mortals. They fostered growing communities while regretfully abandoning those who clung to their place as servants of the Fomorians. It was a time of hard decisions and bittersweet partings, one the boggans still recall somberly on a winter holiday known as the Night of the Embers. It begins with conventional revelry around a fire, but as the night goes on, they allow the fire to die down, and the stories turn wistful and melancholy by turns. Old loves, old homes, and old labors are dutifully recalled and saluted, until the last embers die and the party ends.""",
          ),
          HistoricalDetail(
            title: 'the fomorian threat',
            content:
                """Few Kithain stand as directly opposed to the Fomorians as boggans. Dreams of safety and stability, warmth and security, they are a quiet force that flies in the face of the chaotic and violent nature of the Fomorians and their descendants: the Thallain and the Dark-Kin.

While rarely seen in conflicts, boggans maintained encampments across the Dreaming, helping others to survive, giving their leaders hale and hearty armies in turn. Outposts between camps and hidden safehouses were maintained by boggans in wide webs across the Dreaming, providing shelter for retreating forces or spies in need of protection.

Throughout the conflict between the Fomorian and Tuathan forces, boggans drove back the forces of darkness and pain not with battalions and brigades, but stalwart faith in the dreams that birthed them.""",
          ),
          HistoricalDetail(
            title: 'the sundering',
            content:
                """As magic’s hold on the world waned over the course of the Sundering, the children of the Dreaming took stock, consolidated their numbers, and gradually retreated from well-populated areas of the world. As contact with mortals grew more limited and less frequent, boggans split their forces. Those who served closely under influential sidhe remained closer to fae society, smoothing over any internal conflicts within the newly consolidated groups, while those with less courtly presence led efforts to keep an eye on mortal affairs and make sure that faerie strongholds wouldn’t be discovered.
In time, mortals turned more and more to religions that spurned their old traditions, and life grew more dangerous for the fae looking to remain in contact with mortal society, driving a number of boggans to take on the Changeling Way before the Shattering. In order to maintain the relationships they had already forged, boggans especially needed protection against the Banality overtaking more and more of the world. While they ventured out to keep an eye on the mortals, they also kept a wary eye on the spread of Banality’s influence, doing their best to understand this strange new threat as well as create and keep alive a travelers’ network to spread news between friendly factions.

While humanity as whole forgot their oaths, promises, and relations with the fae, boggans did their best to preserve some kind of contact. While faith itself could be inspirational and wondrous, all too often the organized institutions that accompanied the rise of the new faiths were used as weapons against those who would not adopt new beliefs or conform to new roles. Combined with a newfound religious fear and distrust of magic influencing mortal culture, as well as the accompanying persecution of the practitioners of the old ways, living amongst mortals was a dangerous prospect.

It was even more confusing and terrifying for the first changelings born of mortal parents and many discovered their fae nature only a short time before having their lives taken for displaying strange talents or uncanny insights. Less for the benefit of the mortals that were turning against them and more for their troubled brethren, boggans frequented mortal towns seeking out any of their own kind, looking to save them from the suffocating grasp of Banality or the deadly fear of their neighbors.""",
          ),
          HistoricalDetail(
            title: 'the middle ages',
            content:
                """A turbulent time in the history of the world, to say nothing of the legends of the Kithain, modern scholars have begun pushing back against the long-held popular notion that the Middle Ages were a time of wide-spread ignorance, superstition, and barbarity before the shining dawn of the Renaissance. Of course, any boggan could have told them so long ago, but some things it’s best for people to work out on their own.

While there certainly were horrors in those days, and the Shattering would soon cast a pall over the time in the eyes of Kithain historians, just as the Black Death did for mortal ones, the Middle Ages had their wonders as well. Boggans savored new spices from the Middle East and north Africa, admired the craftsmanship of exotic goods carried back from far-off Asia, and of course immersed themselves in mortal and Kithain courtly gossip as political intrigue blossomed across Europe and beyond. As homebodies, boggans treasured the rapidly increasing level of connection to faraway lands as a precious gift.""",
          ),
          HistoricalDetail(
            title: 'the shattering',
            content:
                """As Banality marched steadily on, freeholds became scarcer, causing many Kithain to flee the world in desperation, while those who remained all too often warred with each other over the precious few places left. Beyond even the Sundering, the Shattering remains the darkest time in the memory of boggans, for while the Sundering divided the mortal Realm and the Dreaming, the Shattering divided the fae themselves. Friends turned against each other and limited resources were divided by favoritism, instead of given to those who would need them most. Anyone sliding into Banality’s grip found themselves a leper among the fae, who often refused to associate with those even barely caught in its grip, for fear of losing themselves as well.
Among groups who had strongholds in the Dreaming and could still access them, leaders would pick their closest friends to hole up inside, and would frequently ask boggans to fill any additional space with the most ‘useful’ individuals. Forced to weigh and measure their companions against each other and decide their fates, a sizable number of boggans did their best to refuse, or nominated candidates who wouldn’t necessarily benefit the group so much as require them to help themselves.

Though they managed mostly only small acts of defiance against the picking and choosing of worth, boggans did their best to ensure the survival of everyone, as opposed to only a select few. As populations divided, those with the resources to survive either demanded unreasonable prices for security, or simply denied others when they had resources to spare simply to secure their own comfort, boggans did everything they could to maintain the comfort of the less fortunate. Staunch champions of the Changeling Way, they did their best to persuade others to consider the option of protecting themselves in the Autumn World, instead of desperately trying to prove their worth to those who considered them lesser.""",
          ),
          HistoricalDetail(
            title: 'the sidhe retreat',
            content: """As the sidhe fled to Arcadia, the commoners they left behind galvanized in their abandonment. Though everyone left behind felt the sting of their leaders’ abdication, boggans were among those most personally affected by the mass exodus. Many considered their lords and ladies to be close companions, and were greatly disheartened by the way they tossed their most loyal and devoted aides aside in favor of self-righteous self-preservation.

In the time directly after the sidhe left, boggans found themselves thrust into the spotlight. Commoners looking for sense in the chaos turned to those who knew most about leadership, and boggans, with their natural ability with people and close proximity to the sidhe, were a natural group to turn to. While many demurred, finding more outgoing partners with whom to work, others stepped up to being leaders themselves, organizing the frantic commoners left behind. While others were furious with Houses Liam and Scathach, the boggans turned to the few sidhe who stayed behind, beseeching them to lead as they always had. A number of boggans previously pledged to other Houses converted to better serve their remaining leaders, but the majority chose instead to represent the Houses to which they had originally pledged, to better serve the Kithain who likewise preferred to retain their titles.

While the Compact between the Courts was a practical necessity in the turmoil following the loss of the gateways and trods, it was largely negotiated by boggans in the Seelie Court, usually with their closest Unseelie counterparts, the sluagh. Concerted efforts on both sides allowed the conflict to come to its indefinite suspension, allowing newly minted changelings everywhere the much-needed time to adapt to their new reality; one without the stability they had known before. While the Sundering had brought unease, the Shattering upended life as everyone had known it, leaving changelings nothing to do but pick up the scraps as best as they could and continue on.""",
          ),
          HistoricalDetail(
            title: 'the black plague',
            content: """As the fae grew ever more elitist and separatist in the wake of Banality’s spread, swaths of magical populations the world over fended for themselves. As the sidhe departed and left their subjects behind, the darkness of the Autumn World only deepened for fae, changelings, and mortals alike, as the bubonic plague swept the eastern and western worlds. While largely regarded as a broken promise between mortals and the Dreaming, boggan scholars share their opinions in mere whispers, refusing — especially now, with the return of the sidhe who vanished around the time of the plague — to spread their thoughts too widely.

While the Escheat is one of the few fae agreements not backed directly by the Dreaming or enforced by Glamour, such forces occasionally act when its tenets are egregiously broken. It is an agreement between fae, after all, which in and of itself loans the oath significant power.

When the sidhe clamored through the gates first, leaving the commoners they were sworn to protect to fend for themselves and to scramble in chaos as gateways slammed shut, they abandoned their brethren to the Autumn and to Banality, violating one of the tenets only recently laid out. In the wake of their abandoning the Right of Rescue, the Black Plague struck, devastated the population, doing the worst of its damage in under a decade. Some even go so far as to theorize that the Dauntain, who also came of the widespread adoption of the Changeling Way, are an extension of the backlash, a contained chimerical side-effect of the plague that sank deep into fae souls.""",
          ),
          HistoricalDetail(
            title: 'the changeling way',
            content: """Among changeling legends are tales of how boggans discovered the solution to the onslaught of Banality. Their mortal friends seemed relatively unfazed by its unrelenting march; certainly, they felt a certain chill when it came near, but not nearly as keenly as the fae. It didn’t take long for the struggling Kithain to turn to what seemed like the most obvious solution: enlist mortals to help shield themselves from the forces that wore them down.
The decision to cloak themselves in mortal flesh was not made lightly, if of necessity, and only after all of their less-invasive ideas had failed. It was an imperfect art to say the least, finding the right method for tying a fae soul to a human body, one that took a good amount of (thankfully harmless) trial and error. Finding the proper way to execute such long-lasting magic required the efforts of many working together to fuel the switch over from fae to changelings.

With their experience dealing with mortals, and their intimate knowledge of how they interacted with the fae and with magic, it was a boggan who cracked the code. Weakened as she was by Banality, it required her entire household to successfully bind her to a mortal form with ancient and long-forgotten Arts. Though the original ritual of the Changeling Way has been lost, scholars studying the process have some theories about its implementation. Some have turned to the study of Time to seek answers, and regard it as the first step to unravelling the process, as it seems to follow the rules of cantrips cast with the realm, resetting and recasting itself with every life cycle.

Once the Shattering barred all access to Arcadia, many theorize the Dreaming itself lent a helping hand, perpetuating the cycle of rebirth as each of a changeling’s lives ended; it’s a widely accepted truth that it must have acted in some way to spread the successful method of the Way across the entire population of fae in a quick and efficient manner""",
          ),
          HistoricalDetail(
            title: 'households & balefires',
            content: """As balefires and freeholds slowly faded and died, pockets of fae and changelings drew closer and closer together around the few that were left. Those abandoned in ‘dead’ sections of the Autumn by closing trods could do little more than band together and hunker down wherever they could, carefully guarding what little they had left. Those abandoned by their leaders — or those in the Houses that had sidhe willing to stay behind — fortified whatever remained of their balefires, and maintained the Households as they had always been run.

Though they wouldn’t solidify for a time, those left without their leaders — or who were disgusted by their selfish ways — gathered in motleys. Wherever sidhe were absent, boggans became the organizing forces behind the first mews. These groups, created and governed by commoners alone, became the backbone for changeling society. While usually not the loudest or strongest of a group, changelings newly adopting the Way turned to boggans for their quiet confidence in the face of turmoil, looking to their experience for where to go next.

As changelings everywhere gathered in Households and the early mews, the balefires they huddled around steadied. Though diminished from their initial splendor, their persistence gave hope to the suffering population, who had already seen far too many fires gutter out in the face of Banality.""",
          ),
          HistoricalDetail(
            title: 'the interregnum',
            content: """One of the largest stretches of time in changeling history, the Interregnum marks a period of tenuous hope but wide-spread uncertainty for those related to the fae. Small surges of Glamour began stabilizing the encroaching of Banality, but every time the balance seemed set to tip in Glamour’s favor, some cataclysmic event rocked the Autumn World, sending shockwaves of Banality through changeling communities everywhere. Persisting in the face of wars, depressions, imperialism, and industrialization, boggans continued to be the glue behind the changeling communities. Either working with the remaining leaders from Houses Gwydion and Liam, or heading up commoner communities (or allowing others to take that place), boggans made it their duty to protect anyone awakening in contentious times, foster the Dreamers who kept all changelings alive, and to remind everyone of the dawn that comes after the longest, darkest night.""",
          ),
          HistoricalDetail(
            title: 'the renaissance',
            content: """With the Renaissance came a peculiar time for changelings the world over. While mortals were inspired more than ever, creating some of the most lasting and well-renowned pieces of art even to this day, their source of inspiration was at the time the most banal of them all: religion. Their previously most reliable source of Glamour now inverted against them, empty of anything that could sustain them. The Renaissance was a time of confusion and uncertainty that saw another consolidation of the fae population, as they drew together to fight the endless march of religion and Banality.

Boggans in this period shone behind the laborers tasked with building some of the greatest architectural achievements of the age. Not necessarily motivated by the religious fervor of the time, they nonetheless dedicated themselves to the artistry and complexity of their tasks, finding solutions and developing new techniques to support the grand cathedrals of the time. The indirect connection to religion, as well as the down-to-earth, methodical, and hands-on work of building also made a perfect hotbed for boggans and the number of projects that were completed ahead of schedule is due directly to their influence.

Changelings awakening throughout the Renaissance were especially precious to Kithain everywhere, bringing vital surges in Glamour as they left their Chrysalises. Boggans awakening in this time were quickly taken on as apprentices to master crafters (themselves usually boggans keeping a careful eye out for new changelings), allowing them an outlet for their natural inclinations and helping them avoid persecution for their ‘fantastic’ ways. In turn, the childlings often made incredible breakthroughs designing or building, quickly adopting and adapting the crafts their masters taught them.""",
          ),
          HistoricalDetail(
            title: 'science & fashion',
            content: """Though they may not appear to have much in common, boggans gravitated toward both topics during the Renaissance. As science moved forward, new discoveries and methods became viable sources of inspiration, bringing small surges of Glamour into the world and allowing a number of boggans to work closely with their Dreamers. Fashion provided hands-on work and allowed boggans’ natural creativity to flourish. As fashions changed, and the wealthy adorned themselves in ever-more ornate clothing, boggans found a place to shine and flex their skills in their crafts. A bright spot in the otherwise uncertain landscape, any boggans awakening during the Tudor period especially were quickly whisked into apprenticeships as tailors and seamstresses, where they could flourish, and in turn inspire others around them.

Though they may not have known it, nearly every noble house of the time had at least one boggan on retainer to craft their decadent wardrobes. Though they would often share tips and tricks and teach each other new techniques, a number remained in playful competition with each other, seeking to be on the cutting-edge of new trends or produce the most lavish, talked-about outfits.

The blend of science and art delighted a number of changelings during the Renaissance, but the inspiration behind advances in math and science, and the determined study of such subjects as astronomy and alchemy were of most interest to boggans. While nockers to this day appreciate things like da Vinci’s journals, boggans instead keep careful libraries of debunked sciences and theories, still cherishing the time and devotion that went into their study.

Some even continue to carry out experiments, particularly toying with how their magic interacts with alchemy and its contemporary field, chemistry. Working closely with nockers — or as closely as the nockers would allow, anyway — a small group known in Kithain circles as the Philosopher's Society cropped up, seeking a way to transmute or otherwise change the properties of cold iron to render it inert. That no results have been forthcoming for centuries does not deter them; as they’re quick to point out, even a small breakthrough in this area could be revolutionary for the Kithain, and that alone makes it worth pursuing despite seemingly endless dead ends.""",
          ),
//          HistoricalDetail(
//            title: '',
//            content: """""",
//          ),
        ],
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
        history: null,
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
        history: null,
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
        history: null,
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
        history: null,
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
        history: null,
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
        history: null,
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
        history: null,
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
        history: null,
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
        history: null,
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
        history: null,
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
        history: null,
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
//        history: null,
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
          position: Point(-1.0, -1.0),
        ),
        history: null,
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
