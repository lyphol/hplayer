@Component
export struct Home {
  @State message: string = 'Home';
  @Consume('pageInfo') pageInfo: NavPathStack;

  build() {
    NavDestination() {
      Row() {
        Column() {
          Text(this.message)
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .onClick(() => {
              this.pageInfo.pushPath({ name: 'Detail' })
            })
        }
        .width('100%')
      }
      .height('100%')
    }
  }
}
