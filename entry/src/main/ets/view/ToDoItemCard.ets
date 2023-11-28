import ToDo from '../mode/ToDo';
@Styles function pmStyle() {
  .padding({top:6,bottom:6})
  .margin({top:6,bottom:6})
};
@Component
struct ToDoItemCard{
  @ObjectLink todoItem:ToDo;
  build(){
   Row(){
     Checkbox({name:'complete'})
       .onChange((v)=>{
         this.todoItem.completed=v;
       })
     Text(this.todoItem.title)
       .decoration({type:this.todoItem.completed?TextDecorationType.LineThrough:TextDecorationType.None})
     Text(this.todoItem.createTime.toLocaleString())
   }.pmStyle()
  }
}

export default ToDoItemCard;