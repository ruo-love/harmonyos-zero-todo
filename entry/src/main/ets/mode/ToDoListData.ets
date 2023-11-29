/**
 * @param<string> title
 * @param<string> content
 * @param<boolean> completed
 * @param<Date> createTime
 * @param<Date> notificationTime
 */
@Observed
export class ToDo{
  constructor(public id:string ,public title:string,public content:string,public completed:boolean ,public createTime: Date,public notificationTime: Date) {
  }
}
const ToDoListData:Array<ToDo> = [
  new ToDo('1','title1','content1',false,new Date(),new Date()),
  new ToDo('2','title2','content2',false,new Date(),new Date()),
  new ToDo('3','title3','content3',false,new Date(),new Date()),
  new ToDo('4','title4','content4',false,new Date(),new Date()),
  new ToDo('5','title5','content5',false,new Date(),new Date())
];
export default ToDoListData;