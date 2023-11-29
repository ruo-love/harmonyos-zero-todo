export default function  dateFormat(time:Date){
  const date = new Date(time);
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");
  const hours = String(date.getHours()).padStart(2, "0");
  const minutes = String(date.getMinutes()).padStart(2, "0");
  const second = String(date.getSeconds()).padStart(2, "0");
  const formattedDateTime = `${year}年${month}月${day}日 ${hours}:${minutes}`;
  return {
    year,
    month,
    day,
    hours,
    minutes,
    second,
    formattedDateTime
  }
}