import ToDoListData, { ToDo } from '../mode/ToDoListData';
class ToDoListViewMode{
  /**
   * 获取todolist 数据
   * @returns Array<ToDo>
   */
  public getTodoListData():Array<ToDo>{
    return ToDoListData
  }
}
export default ToDoListViewMode;