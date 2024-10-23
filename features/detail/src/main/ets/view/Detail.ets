@Component
export struct Detail {
  @State message: string = 'Detail';
  @Consume('pageInfo') pageInfo: NavPathStack;

  build() {
    NavDestination() {
      Row() {
        Column() {
          Text(this.message)
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .onClick(() => {
              this.pageInfo.pushPath({ name: 'Player' })
            })
        }
        .width('100%')
      }
      .height('100%')
    }
  }
}
