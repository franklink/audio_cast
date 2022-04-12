import 'package:audio_cast/audio_cast.dart';
import 'package:audio_cast/src/utils.dart';
import 'package:state_notifier/state_notifier.dart';

class DeviceListNotifier extends StateNotifier<Set<Device>> {
  DeviceListNotifier() : super(Set<Device>());

  void setDevices(Set<Device> newList) {
    print('New device list state with ${newList.length} devices');
    state = newList;
  }
  //{

  // if (newList != state) {
  //   if (newList.length == state.length) {
  //     final List<Device> nList = newList.toList(), sList = state.toList();
  //     for (int i = 0; i < nList.length; i++) {
  //       if (nList[i] != sList[i]) {
  //         state = newList;
  //         return;
  //       }
  //     }
  //   } else {
  //     state = newList;
  //   }
  // }
  //}

  Set<Device> getState() => state;
}

class CurrentDeviceNotifier extends StateNotifier<Device?> {
  CurrentDeviceNotifier() : super(null);

  void setDevice(Device device) => state = device;

  Device? getState() => state;
}

class CurrentPlaybackStateNotifier extends StateNotifier<PlaybackState> {
  CurrentPlaybackStateNotifier() : super(PlaybackState.NO_AUDIO);

  void setPlaybackState(PlaybackState playbackState) => state = playbackState;

  PlaybackState getState() => state;
}

class CurrentCastStateNotifier extends StateNotifier<CastState> {
  CurrentCastStateNotifier() : super(CastState.DISCONNECTED);

  void setState(CastState castState) => state = castState;

  CastState getState() => state;
}

class FlagNotifier extends StateNotifier<bool> {
  FlagNotifier() : super(false);

  void setFlag(bool newState) {
    if (newState != state) state = newState;
  }

  bool get flag => state;
}
