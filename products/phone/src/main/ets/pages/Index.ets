import { Home } from '@hplayer/home';
import { CommonConsts } from '@hplayer/base';
import { Detail } from '@hplayer/detail';
import { Player } from '@hplayer/player';

@Entry
@Component
struct Index {
  @Provide('pageInfo') pageInfo: NavPathStack = new NavPathStack();

  @Builder
  PageMap(name: string) {
    if (name === 'Detail') {
      Detail()
    } else if (name === 'Player') {
      Player()
    }
  }

  build() {
    Navigation(this.pageInfo) {
      Home()
    }
    .mode(NavigationMode.Stack)
    .navDestination(this.PageMap)
    .hideToolBar(true)
    .hideTitleBar(true)
    .hideBackButton(true)
    .width(CommonConsts.FULL_PERCENT)
    .height(CommonConsts.FULL_PERCENT)
  }
}