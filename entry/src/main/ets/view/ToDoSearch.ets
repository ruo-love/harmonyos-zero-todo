@Component
struct ToDoSearch{
  @Link  keyword:string;
  build(){
   TextInput({
     placeholder:'搜索笔记'
   })
     .padding({top:6,bottom:6})
  }
}

export default ToDoSearch;