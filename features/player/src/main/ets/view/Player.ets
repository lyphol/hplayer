@Component
export struct Player {
  @State message: string = 'Player';
  @Consume('pageInfo') pageInfo: NavPathStack;

  build() {
    NavDestination() {
      Row() {
        Column() {
          Text(this.message)
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
        }
        .width('100%')
      }
      .height('100%')
    }
  }
}
