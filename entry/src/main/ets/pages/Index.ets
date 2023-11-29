import AppContext from '@ohos.app.ability.common';
import ToDoHeader from '../view/ToDoHeader';
import ToDoItemCard from '../view/ToDoItemCard';
import ToDoSearch from '../view/ToDoSearch';
import ToDoListViewMode from '../viewmode/ToDoViewMode';
import Want from '@ohos.app.ability.Want';
import { ToDo } from '../mode/ToDoListData';

const toDoListViewMode=new ToDoListViewMode();
@Entry
@Component
struct MainPage {
  @State @Watch('initToDoListData') keyword:string = '';
  @State currentTodoListData:Array<ToDo> = [];
  initToDoListData(){
    const _data = toDoListViewMode.getTodoListData();
    this.currentTodoListData = _data.filter((item)=>item.title.includes(this.keyword));
  }
  enterDetail(todo:ToDo,context:AppContext.UIAbilityContext){
    const want: Want = {
      bundleName: context.applicationInfo.name,
      abilityName: 'DetailAbility',
      parameters: {
        todoId:todo.id
      }
    };
    try {
      context.startAbility(want);
    } catch (error) {
    }
  }
  aboutToAppear(){
    this.initToDoListData();
  }
  build(){
    Column(){
      ToDoHeader({text: 'Zero',total:this.currentTodoListData.length})
      ToDoSearch({keyword:$keyword})
      ForEach(this.currentTodoListData,(todo:ToDo)=>{
        ToDoItemCard({todo:todo})
          .onClick(()=>{
           this.enterDetail(todo,getContext(this) as AppContext.UIAbilityContext)
          })
      },(todo:ToDo)=>todo.id)
    }
    .alignItems(HorizontalAlign.Start)
    .padding(30)
  }
}

