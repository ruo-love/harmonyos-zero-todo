import dateFormat from '../common/utils/dateFormate';
import  { ToDo } from '../mode/ToDoListData';
@Styles function pmStyle() {
  .padding({top:6,bottom:6})
  .margin({top:16})
};
@Component
struct ToDoItemCard{
  @ObjectLink todo:ToDo;
  build(){
   Column(){
     Row(){
       Checkbox({name:'complete'})
         .select(this.todo.completed)
         .selectedColor('#fbc426')
         .onChange((v)=>{
           this.todo.completed=v;
         })
       Text(this.todo.title)
         .fontSize(24)
         .margin({left:20})
         .decoration({type:this.todo.completed?TextDecorationType.LineThrough:TextDecorationType.None})

     }
     .width('100%')
     Text(dateFormat(this.todo.createTime).formattedDateTime)
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