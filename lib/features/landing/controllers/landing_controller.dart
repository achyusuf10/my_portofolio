import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/constants/core/image_assets_const.dart';
import 'package:my_portofolio/features/landing/view/components/desktop/about_component.dart';
import 'package:my_portofolio/features/landing/view/components/desktop/contact_me_component.dart';
import 'package:my_portofolio/features/landing/view/components/desktop/experience_component.dart';
import 'package:my_portofolio/features/landing/view/components/desktop/footer_component.dart';
import 'package:my_portofolio/features/landing/view/components/desktop/project_component.dart';
import 'package:my_portofolio/features/landing/view/components/desktop/skills_component.dart';
import 'package:my_portofolio/shared/models/experience_model.dart';
import 'package:my_portofolio/shared/models/project_model.dart';
import 'package:my_portofolio/shared/models/skill_model.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class LandingController extends GetxController {
  static LandingController get to => Get.find();

  List<SkillModel> skills = [
    const SkillModel(
      name: 'VS Code',
      urlImage: ImageAssetsConst.icVsCode,
    ),
    const SkillModel(
      name: 'Flutter',
      urlImage: ImageAssetsConst.icFlutter,
    ),
    const SkillModel(
      name: 'Figma',
      urlImage: ImageAssetsConst.icFigma,
    ),
    const SkillModel(
      name: 'Dart',
      urlImage: ImageAssetsConst.icDart,
    ),
    const SkillModel(
      name: 'Postman',
      urlImage: ImageAssetsConst.icPostman,
    ),
    const SkillModel(
      name: 'Firebase',
      urlImage: ImageAssetsConst.icFirebase,
    ),
    const SkillModel(
      name: 'Bitbucket',
      urlImage: ImageAssetsConst.icBitbucket,
    ),
    const SkillModel(
      name: 'Bloc',
      urlImage: ImageAssetsConst.icBloc,
    ),
    const SkillModel(
      name: 'Getx',
      urlImage: ImageAssetsConst.icGetx,
    ),
    const SkillModel(
      name: 'Hive',
      urlImage: ImageAssetsConst.icHive,
    ),
    const SkillModel(
      name: 'Git',
      urlImage: ImageAssetsConst.icGit,
    ),
    const SkillModel(
      name: 'Adaptibility',
      urlImage: ImageAssetsConst.icAdaptibility,
    ),
  ];

  List<ExperienceModel> experiences = [
    ExperienceModel(
      title: 'Mobile Developer',
      companyName: 'PT. Venturo Pro Indonesia (Malang, Indonesia)',
      urlImageCompany: ImageAssetsConst.logoVenturo,
      date: 'November 2022 - Present',
      descriptions: [
        'Developed PPOB payment via AGI Cash in INISA app using GetX State Management.',
        'Maintenance INISA APP for Security Reason',
        'Developed Pusaka App for Android and iOS using Flutter technology with GetX as the state management, ensuring a seamless cross-platform user experience.',
        'Taking on the role of Co-Mobile Programmer for the Pusaka project, leading a team of mobile programmers to drive successful project development.',
        'Uploading the Pusaka app to both the Play Store and App Store, ensuring it\'s accessible to a wide audience on Android and iOS platforms.',
        'Collaborated effectively with a diverse team, including Backend, Front-End, QA, and others.',
      ],
      workType: 'Full Time, On-Site',
    ),
    ExperienceModel(
      title: 'Freelance Mobile Developer',
      companyName: 'Kediri App (Kediri, Indonesia)',
      urlImageCompany: ImageAssetsConst.logoKediriApp,
      date: 'November 2022 - Present',
      descriptions: [
        'Designed and developed the \'My Leadership\' Android app to assess public interest in candidates. Using Flutter and GetX for state management and successfully uploaded it to the Play Store for wider accessibility.',
        'Collaborated effectively with a diverse team, to achieve project goals and ensure seamless coordination in all aspects of development.',
        'Developed the Android mobile app \'Teman Bunda Ita\' for managing political volunteer information for Mrs. Ita. Utilized Flutter technology with Provider as the state management and successfully uploaded the application to the Play Store for wider accessibility.',
      ],
      workType: 'Freelance, WFA',
    ),
    ExperienceModel(
      title: 'Intern Mobile Developer',
      companyName: 'BNNP Jawa Timur (Surabaya, Indonesia)',
      urlImageCompany: ImageAssetsConst.logoBnnpJatim,
      date: 'November 2022 - Present',
      descriptions: [
        'Designed and developed the \'Simpel BNNP Jatim\' Android mobile app to provide services like urine test request, appointments, rehabilitation, complaints, and a chat feature with BNNP Jatim for an easy and efficient communication channel for questions, feedback, or assistance. Utilized Flutter technology with GetX as the state management and Firebase for Real-Time Chatting Database. And successfully uploaded the application to the Play Store.',
      ],
      workType: 'Internship, On-Site',
    ),
  ];

  List<ProjectModel> works = [
    ProjectModel(
      urlImage:
          'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/cover_pusaka.jpeg',
      desc:
          """Pusaka SuperApps is an application from the Ministry of Religion which aims"""
          """to provide convenience in accessing Ministry of Religion application services ranging from religion, education and assistance."""
          """\nFeatures Worked I On Is : """
          """Digital ID, Face Liveness, Face Matching, Religious Information, PPOB, Manage Profile, Notification.""",
      skills: [
        'Flutter',
        'GetX State Management',
        'Firebase',
        'VS Code',
        'Git',
        'Google ML Kit',
        'Team Work',
      ],
      title: 'Pusaka',
    ),
    ProjectModel(
      urlImage:
          'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/cover_manowa.png',
      desc:
          """MaNoWa is a media used as a supplement to student learning in Trigonometry material. By learning using MaNoWa learning media, students can memorize the sine and cosine values of special angles in a fun way""",
      skills: [
        'Flutter',
        'GetX State Management',
        'VS Code',
        'Git',
      ],
      title: 'Manowa',
      urlGithub: 'https://github.com/achyusuf10/manowa_apps/tree/main',
    ),
    ProjectModel(
        urlImage:
            'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/cover_my_leadershiip.png',
        desc:
            """The "My LeaderSiiip" is an innovative platform designed for the upcoming 2024 elections. This feature enables individuals to actively participate in shaping the future leadership by evaluating and selecting potential candidates deserving of public support.""",
        skills: [
          'Flutter',
          'GetX State Management',
          'VS Code',
          'Git',
          'Team Work',
        ],
        title: 'My LeaderSiiip',
        urlPlaystore:
            'https://play.google.com/store/apps/details?id=com.kediriapp.myLeaderSiiip&hl=en'),
    ProjectModel(
        urlImage:
            'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/cover_teman_bunda_ita.png',
        desc:
            """Friends of Bunda Ita is an android-based application that is used for Activity Management and Legislative Election Winning from the Volunteer Management process, Door To Door to Real Count Calculations""",
        skills: [
          'Flutter',
          'Provider State Management',
          'VS Code',
          'Firebase'
              'Git',
          'Team Work',
        ],
        title: 'Teman Bunda Ita',
        urlPlaystore:
            'https://play.google.com/store/apps/details?id=com.kediriapp.simpel2024&hl=en'),
    ProjectModel(
        urlImage:
            'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/cover_simpel_bnnp.webp',
        desc:
            """SIMPEL or the East Java BNNP Service Information System, is an application belonging to the East Java BNNP. """
            """This application can make it easier for the public to make requests, rehabilitation and complaints if they find people who abuse drugs. """
            """The features offered are making requests for socialization, hearings, personal and institutional urine tests, legal process rehabilitation, personal and institutional rehabilitation as well as complaints or reports if they find people abusing drugs.""",
        skills: [
          'Flutter',
          'GetX State Management',
          'VS Code',
          'Git',
        ],
        title: 'SIMPEL BNNP Jatim',
        urlPlaystore:
            'https://play.google.com/store/apps/details?id=com.bnnpjatim.simple_bnnp_jatim&hl=en_US&gl=US'),
  ];
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  RxInt positionListIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    itemPositionsListener.itemPositions.addListener(
      () {
        var curPosition = itemPositionsListener.itemPositions.value.first;
        positionListIndex.value = curPosition.index;
      },
    );
  }

  List<Widget> get getWidgetDesktop => [
        const AboutDesktopComponent(),
        SkillsDesktopComponent(
          listData: skills,
        ),
        ExperienceDesktopComponent(
          listData: experiences,
        ),
        ProjectDesktopComponent(
          listData: works,
        ),
        const ContactMeComponent(),
        const FooterComponent(),
      ];

  RxBool isScrolled = false.obs;

  void onTapNavbar(int index) {
    itemScrollController.scrollTo(
      index: index,
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 300),
    );
  }
}
