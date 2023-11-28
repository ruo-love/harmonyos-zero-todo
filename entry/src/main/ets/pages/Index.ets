import ToDo from '../mode/ToDo'
import ToDoHeader from '../view/ToDoHeader'
import ToDoItemCard from '../view/ToDoItemCard';
import ToDoSearch from '../view/ToDoSearch'
@Entry
@Component
struct MainPage {
  @State keyword:string = '';
  @State todoListData:Array<ToDo> = [new ToDo('title','content',false,new Date(),new Date())]
  build(){
    Column(){
      ToDoHeader({text: 'Zero',total:20})
      ToDoSearch({keyword:$keyword})
      ForEach(this.todoListData,(item,index)=>{
        ToDoItemCard({todoItem:item})
      })
    }
    .alignItems(HorizontalAlign.Start)
    .padding(30)
  }
}

