import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';

class FFmpegKitHelper {
  FFmpegKitHelper._();

  static Future<void> execute() async {
    await FFmpegKit.execute('-i file1.mp4 -c:v mpeg4 file2.mp4')
        .then((session) async {
      final returnCode = await session.getReturnCode();

      if (ReturnCode.isSuccess(returnCode)) {
        // SUCCESS

      } else if (ReturnCode.isCancel(returnCode)) {
        // CANCEL

      } else {
        // ERROR
      }
    });
  }
}
