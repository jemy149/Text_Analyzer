import 'package:flutter/widgets.dart';
import 'package:sentimental_analyst/models/tweet.dart';

List<Widget> tweets = const [
  //flutter
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
    username: 'Flutter',
    name: 'FlutterDev',
    text:
    'On December 8th, we will review chapter 19 of #flutterapprentice, learn how to build a backend for your app with @Firebase Cloud Firestore, and answer your questions!.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 0,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
    username: 'Flutter',
    name: 'FlutterDev',
    text:
    'Previously, DartPad was always running the latest stable version. Now, you can use the latest beta channel releases instead by using the new channel switcher in the status bar..',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 1,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
    username: 'Flutter',
    name: 'FlutterDev',
    text:
    'We want your input into how Flutter makes various engineering decisions. Take this quarter is User Survey to help improve Flutter.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 2,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
    username: 'Flutter',
    name: 'FlutterDev',
    text:
    'Tired of writing tedious boilerplate for simple data classes? Try Freezed, a code generation package in Dart that can accelerate your development.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 3,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
    username: 'Flutter',
    name: 'FlutterDev',
    text:
    'Want to learn how Flutter turns widgets into screen real estate? See the way Flutter calulates sizes, composites layers, and paints pixels in the latest #DecodingFlutter.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 4,
  ),
  //google
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
    username: 'Google',
    name: 'Google',
    text:
    'We all have the power to make a difference every day. From small acts to big changes, we can choose to live a more sustainable life for ourselves and others.  Need help getting started? Here are 3 tips for being more sustainable with Google in 2022. 🧵',
    comments: '243',
    retweets: '68K',
    favorites: '692K',
    index: 5,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
    username: 'Google',
    name: 'Google',
    text:
    'This year the world searched “how to heal” more than ever. Whether people are honoring a loved one or reuniting with family, they’re finding ways to come back stronger than before.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 6,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
    username: 'Google',
    name: 'Google',
    text:
    'Googler Rutledge Chin Feman is *unleashing* a whole new world of communication with his dog, Cosmo. Learn how Cosmo can ask for more food, request belly rubs and even send texts with the push.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 7,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
    username: 'Google',
    name: 'Google',
    text:
    'Have a strategy, but be open to tweaking it along the way," says Chai Madan, who shared advice for aspiring Googlers with our @lifeatgoogle team.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 8,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
    username: 'Google',
    name: 'Google',
    text:
    'We all have the power to make a difference every day. From small acts to big changes, we can choose to live a more sustainable life for ourselves and others.  Need help getting started? Here are 3 tips for being more sustainable with Google in 2022.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 9,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
    username: 'Google',
    name: 'Google',
    text:
    'My goal is simple. It is a complete understanding of the universe, why it is as it is and why it exists at all.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 10,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
    username: 'Google',
    name: 'Google',
    text:
    'We are making your time on the road a little easier. Automobile We are introducing several updates for cars compatible with @Android Auto and cars with Google built-in. Lets go for a drive and see what is new.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 11,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
    username: 'Google',
    name: 'Google',
    text:
    'I like to say that everything I’ve learned at Google, I learned from Santa," says Dave Holmes. Dave is part of a team that works on Santa Tracker, an initiative to inspire and educate developers that brings holiday cheer to families around the world.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 12,
  ),
  //Microsoft
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1454912483248930822/_hO4WPRC_400x400.png',
    username: 'Microsoft',
    name: 'Microsoft',
    text:
    'Our superpower is hitting "start meeting" too early and acting like it never happened when we rejoin on time.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 13,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1454912483248930822/_hO4WPRC_400x400.png',
    username: 'Microsoft',
    name: 'Microsoft',
    text:
    'After signing on from being away for an extended period of time, PowerPoint is there to remind you that you’ve made zero progress on your WIP deck.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 14,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1454912483248930822/_hO4WPRC_400x400.png',
    username: 'Microsoft',
    name: 'Microsoft',
    text:
    '2021 brought about a fundamental rewiring of work as we know it.From maximizing flexibility to noise reducing solutions, we revisit the biggest shifts of the past year.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 15,
  ),
  //IBM
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'Breaking: IBM acquires leading data & analytics software provider for environmental performance management . IBMs AI portfolio now gives clients a single source of truth for analyzing hundreds of factors related to environmental impact.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 16,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'Today IBM Watson Advertising brings AI-driven data from The Weather Company to AWS Data Exchange. The expanded relationship with AWS gives more businesses access to the weather data that can drive consumer behavior and purchasing.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 17,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'Radiological imaging, self-driving cars, and virtual assistants all use advanced #AI systems to automate complex tasks and enhance the user experience. Explore the different types of AI and their real-life applications through our .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 18,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'Today IBM and @Samsungrevealed a breakthrough in semiconductor design that could lead to significant improvements in the performance of electronics, enabling the production of devices like cell phone batteries that last weeks instead of days.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 19,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'IBM Power E1080 server but make it mini Smiling face with sunglasses Check out this mini model of the latest server from IBM Power created by artist Nicolas Temese@6502b.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 20,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'The energy industry is facing pressure to reduce greenhouse gases as demand for affordable energy continues to rise. IBM and @awscloud are collaborating to reduce data barriers, accelerating the discovery of more sustainable resources.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 21,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'IBMer Adriana Pink is a firm believer in paying it forward. Here, she shares how she landed a job at IBM and the importance of providing opportunities for the next generation. Flag of Colombia Flag of Jamaica.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 22,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'Today CEO @ArvindKrishna accepted the inaugural Terra Carta Seal from HRH The Prince of Wales on behalf of IBM. Learn more about the Seal and IBMs continued commitment to environmental sustainability from Wayne Balta, IBM Chief Sustainability Officer.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 23,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1407413691805581317/Q4Uyj4HB_400x400.jpg',
    username: 'IBMNews',
    name: 'IBMNews',
    text:
    'Weather can change in a flash. But we’re ready. Thunder cloud and rain In 1956, the IBM 705 pioneered a new model for studying weather. Today, we continue to advance the science of weather forecasting with the IBM GRAF model running on a POWER9-based supercomputer.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 24,
  ),
  //Dell
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'Created with enhanced durability, #Latitude #Rugged 7330 laptops guide your focus on the job. Work in a relaxed state of mind knowing that your laptop is secured from the harshest environments.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 25,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'Intelligent, intuitive solutions that create seamless experiences as people move between spaces and devices.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 26,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'What if we could push reuse to the limit? Concept Luna is a vision for sustainable PC design that explores revolutionary ideas to make components immediately accessible, replaceable and reusable.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 27,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'Celebrating our 2021 innovations. From the world is most intelligent PCs and most powerful gaming laptops to sustainable design - we are just getting started.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 28,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'A special thanks goes out to the @AustinChamber for naming us as a 2021 award recipient for Outstanding Community Relations. Giving back to our community is at the cornerstone of our culture code.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 29,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'As a remote team member, Alex customizes his workplace so he can work comfortably and efficiently while remaining close to support networks.By sharing his #WFH experience, he is helping build our culture of inclusivity and accessibility for all.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 30,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'Built secure enough to tackle every job, in any element that you are faced with, the #Rugged 5430 is lightweight but powerful.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 31,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'There’s always something to be thankful for. Grateful to those who know the recipe.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 32,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'At Dell Technologies, we celebrate unique perspectives every day. Today, in particular, we honor the service and courage of the veterans who have sacrificed so much for us.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 33,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1128674419738595329/q1mhPmSs_400x400.png',
    username: 'Dell',
    name: 'Dell',
    text:
    'Built tough enough to tackle conditions in any environment, #Rugged laptops and tablets help the British Armed Forces to always be ready to face the next challenge.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 34,
  ),
  //Chrome
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'With the latest version of Chrome (available every 4 weeks!), find features and security improvements to make browsing more productive, helpful, and safe. Of course, updating is easier with fewer steps.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 35,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'Save all your gift ideas in #Chrome without worry this holiday season. Profiles keep your bookmarks, tab groups, and more separate and for your eyes only when you’re sharing computers.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 36,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'Being a student can be stressful. That’s why productivity features like tab groups, shared highlight, and picture-in-picture help you stay on top of your studies and those exams coming up.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 37,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'Make holiday shopping effortless this year with tools like #Chrome bookmarks, which lets you save items you want for easy access - and even export your wish lists for simple sharing.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 38,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'Syncing made easy through #Chrome. No matter where you are, on your computer or an app on your phone, your passwords are available when you need them. Sign into your Google account and enable to get started.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 39,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'With Chrome, we’re all about improving with iteration. That’s why we release new features in Beta weekly - so you can preview features in development and give us feedback. Read about some of the new experiments, ready for testing right now.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 40,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'When you connect to a website using HTTPS, your personal information and the page you’re visiting stay secure. It’s a vital part of keeping you safe that we’re continuing to invest in, so it’s even more widely supported.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 41,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'While keeping things separate among individual profiles was important, people also shared that they liked easy customization options to personalize these spaces on their computer .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 42,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'The first was between work and personal browsing. Sometimes, when you’re using the same computer for everything, you want to be able to close out from work so you don’t accidentally save files to the wrong place .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 43,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'Before we started designing our new profiles experience in Chrome, we asked people what they needed. Through research, we heard that there are two situations where you find separating your workspaces most useful .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 44,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'Not seeing your profile? Create a new one in #Chrome by clicking into the icon in the top right corner, selecting “Add,” and customizing how you like .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 45,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1037025533182193664/aCWlGSZF_400x400.jpg',
    username: 'Chrome',
    name: 'googlechrome',
    text:
    'To edit or remove a profile in #Chrome, just click the icon in the top right corner to navigate to your settings, or profile manager .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 46,
  ),
  //Android
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1164525925242986497/N5_DCXYQ_400x400.jpg',
    username: 'Android',
    name: 'Android',
    text:
    'In the words of @rihanna “please don’t stop the music” and thanks to Chromecast being built-in to more devices you don’t have to. Simply cast your music and podcasts from your #Android phone to more speakers starting with @Bose  in the next few months. #CES2022.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 47,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1164525925242986497/N5_DCXYQ_400x400.jpg',
    username: 'Android',
    name: 'Android',
    text:
    'Viva Las #Android! We may be at home for #CES2022, but make sure you follow along this week to see all the latest and greatest Android features being unveiled..',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 48,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1164525925242986497/N5_DCXYQ_400x400.jpg',
    username: 'Android',
    name: 'Android',
    text:
    'Whether you’re celebrating with family and friends near or far, the @SamsungMobile #GalaxyZFlip3 5G helps to bridge the distance. Flip the phone open, start a Google Duo call in Flex mode and enjoy video chats hands-free..',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 49,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1164525925242986497/N5_DCXYQ_400x400.jpg',
    username: 'Android',
    name: 'Android',
    text:
    'Live Transcribe on #Android captures speech and sounds to create instant captions and important nuances. From conversations to background noises, people who are hard of hearing or profoundly Deaf can better interact with others and the world around them in the moment.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 50,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1164525925242986497/N5_DCXYQ_400x400.jpg',
    username: 'Android',
    name: 'Android',
    text:
    'A simple and secure way to store your COVID vaccination card on your phone. A collaboration between @Google and @commons_prjct lets #Android users with access to SMART Health Cards save COVID-19 vaccination records on their home screen.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 51,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1164525925242986497/N5_DCXYQ_400x400.jpg',
    username: 'Android',
    name: 'Android',
    text:
    'We all forget about some apps on our phones, but permissions auto-reset makes sure they don’t have ongoing access to your data. Your phone will automatically turn off permissions for apps you haven’t used in a while. Now available on more devices through Google Play Protect..',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 52,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1164525925242986497/N5_DCXYQ_400x400.jpg',
    username: 'Android',
    name: 'Android',
    text:
    'Whether you’re an early riser or you hit “snooze” one too many times, Google Assistant can help make your morning routine easier. Say “Hey Google, my shortcuts” on your #Android phone and see how to get tasks done quickly with apps like @Spotify ,  @MyFitnessPal and more.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 53,
  ),
  //SamsungMobile   ’
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'The #GalaxyZFlip3 stands on its own so you can watch videos hands-free. It’s your newest workout buddy. For you and your best buddy. ',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 54,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'If you’ve missed the 2nd Game & Answer episode live, come watch the replay on Twitch to see @fuslie discussing the experience of being a casual gamer with @SamWitwer @thisisbenzoo @BraxtonMiller5',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 55,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'No filter, no fear. Slay your selfies with the new #GalaxyS21FE 5G’s 32MP front camera that highlights your best features so you’ll look your best on your socials, all the time.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 56,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'Shoot like-worthy shots, every time. The new #GalaxyS21FE 5G’s pro-grade camera lets you capture realistic photos with superior levels of detail in a flash. ',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 57,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'With the #GalaxyZFlip3, you can record yourself hands-free. And maybe even improve your golf game…eventually.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 58,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'No “Oops” if you did it again. That’s life with the new #GalaxyS21FE 5G, with the toughest Gorilla® Glass Victus™ on a Samsung Galaxy smartphone.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 59,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'We put our fastest chip on the #GalaxyS21FE 5G, so you can enjoy graphic-heavy gaming and multitasking like never before',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 60,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'The right proportion for everything you love. From connecting with friends to binge-watching your favorite shows, the new #GalaxyS21FE 5G’s 6.4 inches packs everything you love beyond its own size.  ',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 61,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'It’s a new year! We followed #TeamGalaxy as they worked on their physical and mental health with the #GalaxyWatch4 and #GalaxyZFlip3 5G. Start the new year right and get healthier together with Samsung Galaxy ',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 62,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    ' Say goodbye to dying battery nightmares. The new #GalaxyS21FE 5G, built with a 4500mAh battery and power-efficient display and processor outlasts the day even on 5G.',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 63,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl_400x400.jpg',
    username: 'SamsungMobile',
    name: 'SamsungMobile',
    text:
    'Capture the action and your reaction at the same time. With Dual Recording on the new #GalaxyS21FE 5G, take your vlogging to a whole new level as actor and director, all at once ',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 64,
  ),
  //googledrive  ’
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1313395771304103947/g_ETxUbR_400x400.jpg',
    username: 'googledrive',
    name: 'googledrive',
    text:
    'Save anything from your #GoogleDrive to your device in a few clicks .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 65,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1313395771304103947/g_ETxUbR_400x400.jpg',
    username: 'googledrive',
    name: 'googledrive',
    text:
    'Storing all the memories in our #GoogleDrive .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 66,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1313395771304103947/g_ETxUbR_400x400.jpg',
    username: 'googledrive',
    name: 'googledrive',
    text:
    'It’s never too late to learn about our features .',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 67,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1313395771304103947/g_ETxUbR_400x400.jpg',
    username: 'googledrive',
    name: 'googledrive',
    text:
    ' Started in 2006 now we’re here Multiple musical notes Thank you for the birthday wishes! Here’s to many more years of comments, suggestions, and collaboration',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 68,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1313395771304103947/g_ETxUbR_400x400.jpg',
    username: 'googledrive',
    name: 'googledrive',
    text:
    'I made a folder in Google Drive called "hot mess" then dragged EVERYTHING (all my folders) into this folder. And only have left the 5 that I really use all the time. WAY easier to keep my drive organized.   #googleEDU ',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 69,
  ),
  Tweet(
    avatar:
    'https://pbs.twimg.com/profile_images/1313395771304103947/g_ETxUbR_400x400.jpg',
    username: 'googledrive',
    name: 'googledrive',
    text:
    'Starting today, we’re rolling out new updates to help bridge the gaps in hybrid work. Learn about features like spaces, Companion mode in #GoogleMeet, and new meeting devices to complement our Series One ',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
    index: 70,
  ),





  // Tweet(
  //   avatar:
  //       'https://pbs.twimg.com/profile_images/1168932726461935621/VRtfrDXq_400x400.png',
  //   username: 'Android Dev',
  //   name: 'AndroidDev',
  //   // timeAgo: '20m',
  //   text: 'News and announcements for developers from the Android team.',
  //   comments: '305',
  //   retweets: '20K',
  //   favorites: '1M',
  //   index: 1,
  // ),
  // Tweet(
  //   avatar:
  //       'https://pbs.twimg.com/profile_images/808350098178670592/bYyZI8Bp_400x400.jpg',
  //   username: 'Google Play',
  //   name: 'GooglePlay',
  //   // timeAgo: '21m',
  //   text:
  //       'We’re exploring the world’s greatest stories through movies, TV, games, apps, books and so much more. Up for new adventures and discoveries? Let’s play.',
  //   comments: '1K',
  //   retweets: '70K',
  //   favorites: '2M',
  //   index: 2,
  // ),
];

// List<String> said = [
//   'Google’s UI toolkit to build apps for mobile, web, & desktop from a single codebase.',
// ];
