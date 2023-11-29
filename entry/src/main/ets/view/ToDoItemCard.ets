import dateFormat from '../common/utils/dateFormate';
import ToDo from '../mode/ToDo';
@Styles function pmStyle() {
  .padding({top:6,bottom:6})
  .margin({top:16})
};
@Component
struct ToDoItemCard{
  @ObjectLink todoItem:ToDo;
  build(){
   Column(){
     Row(){
       Checkbox({name:'complete'})
         .select(this.todoItem.completed)
         .selectedColor('#fbc426')
         .onChange((v)=>{
           this.todoItem.completed=v;
         })
       Text(this.todoItem.title)
         .fontSize(24)
         .margin({left:20})
         .decoration({type:this.todoItem.completed?TextDecorationType.LineThrough:TextDecorationType.None})

     }
     .width('100%')
     Text(dateFormat(this.todoItem.createTime).formattedDateTime)
       .fontSize(12)
       .fontColor('#cccccc')
       .alignSelf(ItemAlign.End)
   }
   .pmStyle()
   .justifyContent(FlexAlign.SpaceBetween)
   .borderRadius(4)
  }
}

export default ToDoItemCard;