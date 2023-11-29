@Component
struct ToDoSearch{
  @Link  keyword:string;
  build(){
   TextInput({
     text:this.keyword,
     placeholder:'搜索笔记'
   })
     .height(40)
     .onChange((v)=>{
       this.keyword = v
     })
     .padding({top:6,bottom:6})
  }
}

export default ToDoSearch;