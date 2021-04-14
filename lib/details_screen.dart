import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:googleservices/home.dart';
import 'package:googleservices/size_config.dart';

class DetailsScreen extends StatefulWidget {
  String naslov;
  DetailsScreen(String naslov) {
    if (naslov.toLowerCase().contains('photos'))
      this.naslov = 'photos';
    else if (naslov.toLowerCase().contains('play'))
      this.naslov = 'play';
    else if (naslov.toLowerCase().contains('ads')) this.naslov = 'ads';

    this.naslov = naslov;
  }

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  AudioCache audioCache = AudioCache();

  Text getDeatils() {
    String opis = 'error';
    if (widget.naslov.toLowerCase() == 'gmail') {
      opis =
          'Gmail is a free email service provided by Google. As of 2019, it had 1.5 billion active users worldwide.[1] A user typically accesses Gmail in a web browser or the official mobile app. Google also supports the use of email clients via the POP and IMAP protocols. At its launch in 2004, Gmail provided a storage capacity of one gigabyte per user, which was significantly higher than its competitors offered at the time. Today, the service comes with 15 gigabytes of storage. Users can receive emails up to 50 megabytes in size, including attachments, while they can send emails up to 25 megabytes. In order to send larger files, users can insert files from Google Drive into the message. Gmail has a search-oriented interface and a "conversation view" similar to an Internet forum. The service is notable among website developers for its early adoption of Ajax. Googles mail servers automatically scan emails for multiple purposes, including to filter spam and malware, and to add context-sensitive advertisements next to emails. This advertising practice has been significantly criticized by privacy advocates due to concerns over unlimited data retention, ease of monitoring by third parties, users of other email providers not having agreed to the policy upon sending emails to Gmail addresses, and the potential for Google to change its policies to further decrease privacy by combining information with other Google data usage. The company has been the subject of lawsuits concerning the issues. Google has stated that email users must "necessarily expect" their emails to be subject to automated processing and claims that the service refrains from displaying ads next to potentially sensitive messages, such as those mentioning race, religion, sexual orientation, health, or financial statements. In June 2017, Google announced the end to the use of contextual Gmail content for advertising purposes, relying instead on data gathered from the use of its other services';
    } else if (widget.naslov.toLowerCase() == 'flutter') {
      opis =
          'Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia,[4] and the web from a single codebase.[5] The first version of Flutter was known as codename "Sky" and ran on the Android operating system. It was unveiled at the 2015 Dart developer summit,[6] with the stated intent of being able to render consistently at 120 frames per second.[7] During the keynote of Google Developer Days in Shanghai, Google announced Flutter Release Preview 2, which is the last big release before Flutter 1.0. On December 4, 2018, Flutter 1.0 was released at the Flutter Live event, denoting the first "stable" version of the Framework. On December 11, 2019, Flutter 1.12 was released at the Flutter Interactive event.[8] On May 6, 2020, the Dart SDK in version 2.8 and the Flutter in version 1.17.0 were released, where support was added to the Metal API, improving performance on iOS devices (approximately 50%), new Material widgets, and new network tracking. On March 3, 2021, Google released Flutter 2 during an online Flutter Engage event. This major update brought official support for web-based applications as well as early-access desktop application support for Windows, MacOS, and Linux.[9]';
    } else if (widget.naslov.toLowerCase() == 'firebase') {
      opis =
          'Firebase evolved from Envolve, a prior startup founded by James Tamplin and Andrew Lee in 2011. Envolve provided developers an API that enables the integration of online chat functionality into their websites. After releasing the chat service, Tamplin and Lee found that it was being used to pass application data that were not chat messages. Developers were using Envolve to sync application data such as game state in real time across their users. Tamplin and Lee decided to separate the chat system and the real-time architecture that powered it.[3] They founded Firebase as a separate company in September 2011[4] and it launched to the public in April 2012.[5] Firebases first product was the Firebase Realtime Database, an API that synchronizes application data across iOS, Android, and Web devices, and stores it on Firebases cloud. The product assists software developers in building real-time, collaborative applications. In May 2012, a month after the beta launch, Firebase raised 1.1 million in seed funding from venture capitalists Flybridge Capital Partners, Greylock Partners, Founder Collective, and New Enterprise Associates.[6] In June 2013, the company further raised 5.6 million in Series A funding from Union Square Ventures and Flybridge Capital Partners.[7]';
    } else if (widget.naslov.toLowerCase() == 'youtube') {
      opis =
          'YouTube is an online video platform owned by Google. It is the second most-visited website in the world.[7] In 2019, more than 500 hours of video content were uploaded to YouTube servers every minute.[8] YouTube provides several ways to watch videos, including the website, the mobile apps, and permitting other websites to embed them. Available content includes video clips, TV show clips, music videos, short and documentary films, audio recordings, movie trailers, live streams, video blogs, and short original videos. Most content is generated by individuals, but media corporations also publish videos. Besides watching and uploading, registered users can comment on videos, rate them, create playlists, and subscribe to other users. Founded in 2005, YouTube was acquired the following year by Google for US1.65 billion. It has become one of the companys most lucrative subsidiaries, earning 15 billion in 2019.[1] YouTube and selected creators earn advertising revenue from Google AdSense, a program that targets ads according to site content and audience. The vast majority of videos are free to view, but there are exceptions, including subscription-based premium channels, film rentals, as well as YouTube Music and YouTube Premium, subscription services respectively offering premium and ad-free music streaming, and ad-free access to all content, including exclusive content commissioned from notable personalities. YouTube has faced criticism over aspects of its operations, including its handling of copyrighted content contained within uploaded videos,[9] its recommendation algorithms perpetuating videos that promote conspiracy theories and falsehoods,[10] hosting videos ostensibly targeting children but containing violent or sexually suggestive content involving popular characters,[11] videos of minors attracting pedophilic activities in their comment sections,[12] and fluctuating policies on the types of content that is eligible to be monetized with advertising.[9]';
    } else if (widget.naslov.toLowerCase() == 'photos') {
      opis =
          'Google Photos is a photo sharing and storage service developed by Google. It was announced in May 2015 and separated from Google+, the companys former social network. In its free tier, Google Photos stores unlimited photos and videos up to 16 megapixels and 1080p resolution respectively (anything larger gets down-scaled to these sizes). This free tier will end on June 1, 2021. Photos and videos uploaded after that date get counted towards the 15 GB free quota shared across the users Google services.[4] There are subscriptions offered for users wanting to store their photos and videos at their "original" quality and requiring more storage than the 15 GB offered free. The service automatically analyzes photos, identifying various visual features and subjects. Users can search for anything in photos, with the service returning results from three major categories: People, Places, and Things. The computer vision of Google Photos recognizes faces (not only those of humans, but pets as well), grouping similar ones together (this feature is only available in certain countries due to privacy laws); geographic landmarks (such as the Eiffel Tower); and subject matter, including birthdays, buildings, animals, food, and more. Different forms of machine learning in the Photos service allow recognition of photo contents, automatically generate albums, animate similar photos into quick videos, surface past memories at significant times, and improve the quality of photos and videos. In May 2017, Google announced several updates to Google Photos, including reminders for and suggested sharing of photos, shared photo libraries between two users, and physical albums. Photos automatically suggested collections based on face, location, trip, or other distinction. Google Photos acts as a backup when photos are sent or in Google terms shared. This is just a common backup tool when photos are shared between social media or other platforms or apps. Google Photos received critical acclaim after its decoupling from Google+ in 2015. Reviewers praised the updated Photos service for its recognition technology, search, apps, and loading times. Nevertheless, privacy concerns were raised, including Googles motivation for building the service, as well as its relationship to governments and possible laws requiring Google to hand over a users entire photo history. Google Photos has seen strong user adoption. It reached 100 million users after five months, 200 million after one year, 500 million after two years, and officially passed the 1 billion user mark in 2019, in just four years after its initial launch.[5] Google reports as of 2020, approximately 28 billion photos and videos are uploaded to the service every week, and more than 4 trillion photos are stored in the service total.[6] In November 2020, Google Photos announced that it would be ending its offering of free unlimited storage for photos uploaded in "high quality" or "express quality" starting on June 1, 2021, due to rising demand for storage. Google now provides this service for their Google One subscription. Existing photos will remain unaffected, and new photos will count towards the users storage quota shared across Google Drive, Gmail, and Google Photos.[6] Pixel users are exempt from this change, and they will be able to continue uploading photos at "high quality" (or original quality for owners of the original Pixel) for free even after June 1, 2021.[7][8] However, future Pixel devices after the Pixel 5 wont be exempt from this change.[9]';
    } else if (widget.naslov.toLowerCase() == 'play') {
      opis =
          'Google Play Store, formerly Android Market, is a digital distribution service operated and developed by Google. It serves as the official app store for certified devices running on the Android operating system, allowing users to browse and download applications developed with the Android software development kit (SDK) and published through Google. Google Play also serves as a digital media store, offering music, books, movies, and television programs.[2] Applications are available through Google Play either free of charge or at a cost. They can be downloaded directly on an Android device through the proprietary Play Store mobile app or by deploying the application to a device from the Google Play website. Applications utilizing hardware capabilities of a device can be targeted to users of devices with specific hardware components, such as a motion sensor (for motion-dependent games) or a front-facing camera (for online video calling). The Google Play store had over 82 billion app downloads in 2016 and reached over 3.5 million apps published in 2017,[3] while after a purge of apps is back to over 3 million.[4] It has been the subject of multiple issues concerning security, in which malicious software has been approved and uploaded to the store and downloaded by users, with varying degrees of severity. Google Play was launched on March 6, 2012, bringing together Android Market, and the Google under one brand, marking a shift in Googles digital distribution strategy. The services included in Google Play are being discontinued in favor of YouTube Music in December 2020. Following their re-branding, Google has gradually expanded the geographical support for each of the services.';
    } else if (widget.naslov.toLowerCase() == 'maps') {
      opis =
          'Google Maps is a web mapping product developed at Google by Lars Rasmussen and Jens Rasmussen. It offers satellite imagery, aerial photography, street maps, 360° interactive panoramic views of streets (Street View), real-time traffic conditions, and route planning for traveling by foot, car, air (in beta) and public transportation. In 2020, Google Maps was used by over 1 billion people every month around the world.[1] Google Maps began as a C++ desktop program at Where 2 Technologies. In October 2004, the company was acquired by Google, which converted it into a web application. After additional acquisitions of a geospatial data visualization company and a real time traffic analyzer, Google Maps was launched in February 2005.[2] The services front end utilizes JavaScript, XML, and Ajax. Google Maps offers an API that allows maps to be embedded on third-party websites,[3] and offers a locator for businesses and other organizations in numerous countries around the world. Google Map Maker allowed users to collaboratively expand and update the services mapping worldwide but was discontinued from March 2017. However, crowdsourced contributions to Google Maps were not discontinued as the company announced those features would be transferred to the Google Local Guides program.[4] Google Maps satellite view is a top-dow" or birds-eye view; most of the high-resolution imagery of cities is aerial photography taken from aircraft flying at 800 to 1,500 feet (240 to 460 m), while most other imagery is from satellites.[5] Much of the available satellite imagery is no more than three years old and is updated on a regular basis.[6] Google Maps previously used a variant of the Mercator projection, and therefore could not accurately show areas around the poles.[7] In August 2018, the desktop version of Google Maps was updated to show a 3D globe. It is still possible to switch back to the 2D map in the settings. Google Maps for Android and iOS devices was released in September 2008 and features GPS turn-by-turn navigation along with dedicated parking assistance features. In August 2013, it was determined to be the worlds most popular smartphone app, with over 54% of global smartphone owners using it';
    } else if (widget.naslov.toLowerCase() == 'ads') {
      opis =
          'Google launched AdWords in 2000.[1] At first, AdWords advertisers paid for the service monthly, and Google would set up and manage their campaign. To accommodate small businesses and those who wanted to manage their own campaigns, Google soon introduced the AdWords self-service portal. In 2005, Google started a campaign management service called Jumpstart.[7] The AdWords system was initially implemented on top of the MySQL database engine. After the system had been launched, management decided to use Oracle instead but was eventually reverted to MySQL after the system became much slower.[8] Eventually, Google developed a custom distributed Relational database management system (RDBMS) known as Google F1 specifically for the needs of the Ad business. The interface offers Spreadsheet Editing, Search Query Reports, and conversion metrics.[9] In 2008, Google launched the Google Online Marketing Challenge,[10] an in-class academic exercise for tertiary students.[11] Over 8,000 students from 47 countries participated in the challenge in 2008, over 10,000 students from 58 countries took part in 2009, about 12,000 students in 2010, and almost 15,000 students from 70 countries in 2011. The Challenge runs annually, roughly from January to June.';
    }

    return Text(opis);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Positioned(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      //width: SizeConfig.screenWidth,
                      child: Image.asset(
                        'assets/${widget.naslov.toLowerCase()}.png',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.naslov.toUpperCase(),
                      style: TextStyle(fontSize: 30),
                    ),
                    IconButton(
                      icon: Icon(Icons.play_arrow, size: 40),
                      onPressed: () {
                        String path = widget.naslov.toLowerCase() + ".mp3";
                        audioCache.load(path);
                        audioCache.play(path);
                        audioCache.clearCache();
                        audioCache.clear(path);
                      },
                      color: Colors.black,
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: getDeatils(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
