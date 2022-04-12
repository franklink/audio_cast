import 'package:audio_cast/audio_cast.dart';

void main() async {
  AudioCast.playbackStateStream.listen((s) async {
    print('New playbackState: ' + s.toString());
  });

  AudioCast.initialize();

  AudioCast.deviceStream.listen((deviceList) {
    print('Updated devices');
    print('Total devices: ${deviceList.length}.');
  },
      onDone: () => print('Device Stream Finished!'),
      onError: (_) => print('Device Stream Error!'));

  //await for (Set<Device> deviceList in AudioCast.deviceStream) {
  // print('Updated devices');

  // if (deviceList.isNotEmpty) {
  //   var device = deviceList.first;
  //   print(device.name);
  //   print('Total devices: ${deviceList.length}.');

  // await AudioCast.connectToDevice(device);

  // await AudioCast.castAudioFromUrl(
  //   'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
  //   mediaData: MediaData(title: 'testTitle', album: 'album'),
  //   start: const Duration(seconds: 30),
  // );

  // await Future.delayed(Duration(seconds: 5));
  // await AudioCast.fastForward();

  // await Future.delayed(Duration(seconds: 5));
  // print(await AudioCast.getPosition());

  // await Future.delayed(Duration(seconds: 5));
  // await AudioCast.pause();

  // await Future.delayed(Duration(seconds: 5));
  // await AudioCast.play();

  // await Future.delayed(Duration(seconds: 5));
  // await AudioCast.rewind();

  // await Future.delayed(Duration(seconds: 5));
  // await AudioCast.increaseVolume();

  // await Future.delayed(Duration(seconds: 13));
  // await AudioCast.disconnect();
  //}
  //}

  //AudioCast.shutdown();
}
