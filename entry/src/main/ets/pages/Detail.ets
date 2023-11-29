import router from '@ohos.router'
@Entry
@Component
struct Detail {
  @StorageProp('todoId') todoId: string = '';
  build() {
    Row() {
      Column() {
        Text(this.todoId)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}