import  router from '@ohos.router'
import AppContext from '@ohos.app.ability.common';
import ToDo from '../mode/ToDo';
import ToDoHeader from '../view/ToDoHeader';
import ToDoItemCard from '../view/ToDoItemCard';
import ToDoSearch from '../view/ToDoSearch';
import ToDoListData from '../viewmode/TodoListData';
import Want from '@ohos.app.ability.Want';

@Entry
@Component
struct MainPage {
  @State @Watch('initToDoListData') keyword:string = '';
  @State currentTodoListData:Array<ToDo> = [];
  initToDoListData(){
    const _data = ToDoListData;
    console.log(this.keyword,'keyword');
    this.currentTodoListData = _data.filter((item)=>item.title.includes(this.keyword));
  }
  aboutToAppear(){
    this.initToDoListData();
  }
  build(){
    Column(){
      ToDoHeader({text: 'Zero',total:this.currentTodoListData.length})
      ToDoSearch({keyword:$keyword})
      ForEach(this.currentTodoListData,(item:ToDo)=>{
        ToDoItemCard({todoItem:item})
          .onClick(()=>{
            const want: Want = {
              bundleName: getContext(this).applicationInfo.name,
              abilityName: 'DetailAbility',
              parameters: {
                todoId:item.id
              }
            };
            try {
              const context = getContext(this) as AppContext.UIAbilityContext
              context.startAbility(want);
            } catch (error) {

            }
          })
      },(item:ToDo)=>item.id)
    }
    .alignItems(HorizontalAlign.Start)
    .padding(30)
  }
}

