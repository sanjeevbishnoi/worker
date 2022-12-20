import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';

/*
COMMAND	DESCRIPTION
-ss 0:00:15	Seeks to position on the input video. The trim starts from this position.

-to 0:00:45	Stops reading at the position in the input video. The trim stops at
 this position. The total length of the video is 0:02:05.

-y	Overwrite output files. Helpful when the Save Video button is tapped more 
than once.

-i $inputPath	Input file location. This is the file on which the crop and trim 
are applied.

-filter:v	Apply a filter to the video stream.
"crop=320:150"	Apply a crop filter from the center of the video that is 320 
pixels wide and 150 pixels tall. The original dimensions of the video were 
320 x 240.

-c:a copy $outputPath	Specifies the codec with which the output file must be 
encoded. Here, copy is a special value to indicate the stream is not to be 
re-encoded. The a after the colon is a stream specifier for the audio stream.
*/

class FFmpegKitHelper {
  FFmpegKitHelper._();

  static Future<void> execute() async {
    await FFmpegKit.execute(
      '-i file1.mp4 -c:v mpeg4 file2.mp4 -ss 0:00:6 -to 0:00:10',
    ).then((session) async {
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
