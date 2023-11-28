@Component
struct ToDoHeader{
  @Prop text:string;
  @Prop total:number;
  build(){
    Column(){
      Row(){
        Text(this.text)
          .fontWeight(FontWeight.Bold)
          .fontSize(30)
          .fontColor('#fbc426')
      }
      Text(`${this.total.toString()} 条笔记`)
        .padding({top:6})
        .fontSize(12)
        .fontColor('#999999')
    }
    .margin({bottom:20})
    .alignItems(HorizontalAlign.Start)
  }
}

export default ToDoHeader;