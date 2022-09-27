import 'package:get/get.dart';

import '../modules/add_user/bindings/add_user_binding.dart';
import '../modules/add_user/views/add_user_view.dart';
import '../modules/aturan_perawatan/bindings/aturan_perawatan_binding.dart';
import '../modules/aturan_perawatan/views/aturan_perawatan_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/info/bindings/info_binding.dart';
import '../modules/info/views/info_view.dart';
import '../modules/jenazah/bindings/jenazah_binding.dart';
import '../modules/jenazah/views/jenazah_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/materi/bindings/materi_binding.dart';
import '../modules/materi/views/materi_view.dart';
import '../modules/memandikan/bindings/memandikan_binding.dart';
import '../modules/memandikan/views/memandikan_view.dart';
import '../modules/mengkafani/bindings/mengkafani_binding.dart';
import '../modules/mengkafani/views/mengkafani_view.dart';
import '../modules/mengubur/bindings/mengubur_binding.dart';
import '../modules/mengubur/views/mengubur_view.dart';
import '../modules/meninggal/bindings/meninggal_binding.dart';
import '../modules/meninggal/views/meninggal_view.dart';
import '../modules/new_password/bindings/new_password_binding.dart';
import '../modules/new_password/views/new_password_view.dart';
import '../modules/pandemi/bindings/pandemi_binding.dart';
import '../modules/pandemi/views/pandemi_view.dart';
import '../modules/perawatan_jenazah/bindings/perawatan_jenazah_binding.dart';
import '../modules/perawatan_jenazah/views/perawatan_jenazah_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/quiz/bindings/quiz_binding.dart';
import '../modules/quiz/bindings/score_bindings.dart';
import '../modules/quiz/views/quiz.dart';
import '../modules/quiz/views/quiz_view.dart';
import '../modules/quiz/views/score.dart';
import '../modules/sakaratul/bindings/sakaratul_binding.dart';
import '../modules/sakaratul/views/sakaratul_view.dart';
import '../modules/sakit/bindings/sakit_binding.dart';
import '../modules/sakit/views/sakit_view.dart';
import '../modules/shalat/bindings/shalat_binding.dart';
import '../modules/shalat/views/shalat_view.dart';
import '../modules/update_password/bindings/update_password_binding.dart';
import '../modules/update_password/views/update_password_view.dart';
import '../modules/update_profile/bindings/update_profile_binding.dart';
import '../modules/update_profile/views/update_profile_view.dart';
import '../modules/video/bindings/video_binding.dart';
import '../modules/video/views/video_view.dart';
import '../modules/video_memandikan/bindings/video_memandikan_binding.dart';
import '../modules/video_memandikan/views/video_memandikan_view.dart';
import '../modules/video_mengkafani/bindings/video_mengkafani_binding.dart';
import '../modules/video_mengkafani/views/video_mengkafani_view.dart';
import '../modules/video_pemulasaran/bindings/video_pemulasaran_binding.dart';
import '../modules/video_pemulasaran/views/video_pemulasaran_view.dart';
import '../modules/video_shalat/bindings/video_shalat_binding.dart';
import '../modules/video_shalat/views/video_shalat_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_USER,
      page: () => const AddUserView(),
      binding: AddUserBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => const NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_PROFILE,
      page: () => UpdateProfileView(),
      binding: UpdateProfileBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_PASSWORD,
      page: () => const UpdatePasswordView(),
      binding: UpdatePasswordBinding(),
    ),
    GetPage(
      name: _Paths.MATERI,
      page: () => const MateriView(),
      binding: MateriBinding(),
    ),
    GetPage(
      name: _Paths.JENAZAH,
      page: () => const JenazahView(),
      binding: JenazahBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ,
      page: () => QuizScreen(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: _Paths.PERAWATAN_JENAZAH,
      page: () => const PerawatanJenazahView(),
      binding: PerawatanJenazahBinding(),
    ),
    GetPage(
      name: _Paths.SAKIT,
      page: () => const SakitView(),
      binding: SakitBinding(),
    ),
    GetPage(
      name: _Paths.SAKARATUL,
      page: () => const SakaratulView(),
      binding: SakaratulBinding(),
    ),
    GetPage(
      name: _Paths.MENINGGAL,
      page: () => const MeninggalView(),
      binding: MeninggalBinding(),
    ),
    GetPage(
      name: _Paths.ATURAN_PERAWATAN,
      page: () => const AturanPerawatanView(),
      binding: AturanPerawatanBinding(),
    ),
    GetPage(
      name: _Paths.MEMANDIKAN,
      page: () => const MemandikanView(),
      binding: MemandikanBinding(),
    ),
    GetPage(
      name: _Paths.MENGKAFANI,
      page: () => const MengkafaniView(),
      binding: MengkafaniBinding(),
    ),
    GetPage(
      name: _Paths.SHALAT,
      page: () => const ShalatView(),
      binding: ShalatBinding(),
    ),
    GetPage(
      name: _Paths.MENGUBUR,
      page: () => const MenguburView(),
      binding: MenguburBinding(),
    ),
    GetPage(
      name: _Paths.PANDEMI,
      page: () => const PandemiView(),
      binding: PandemiBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_MEMANDIKAN,
      page: () => const VideoMemandikanView(),
      binding: VideoMemandikanBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_MENGKAFANI,
      page: () => const VideoMengkafaniView(),
      binding: VideoMengkafaniBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_SHALAT,
      page: () => const VideoShalatView(),
      binding: VideoShalatBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_PEMULASARAN,
      page: () => const VideoPemulasaranView(),
      binding: VideoPemulasaranBinding(),
    ),
    GetPage(
      name: _Paths.INFO,
      page: () => const InfoView(),
      binding: InfoBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO,
      page: () => const VideoView(),
      binding: VideoBinding(),
    ),
  ];
}
