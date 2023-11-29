/**
 * @param<string> title
 * @param<string> content
 * @param<boolean> completed
 * @param<Date> createTime
 * @param<Date> notificationTime
 */
@Observed
class ToDo{
  constructor(public id:string ,public title:string,public content:string,public completed:boolean ,public createTime: Date,public notificationTime: Date) {
  }
}
export default ToDo