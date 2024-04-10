package pet.join;

import java.util.Date;

public class cartListVO {
	public int order_num;
    public String user_id;
    public String pro_num;
  public Date  order_regdate;
  
public int getOrder_num() {
	return order_num;
}
public cartListVO setOrder_num(int order_num) {
	this.order_num = order_num;
	return this;
}
public String getUser_id() {
	return user_id;
}
public cartListVO setUser_id(String user_id) {
	this.user_id = user_id;
	return this;
}
public String getPro_num() {
	return pro_num;
}
public cartListVO setPro_num(String pro_num) {
	this.pro_num = pro_num;
	return this;
}
public Date getOrder_regdate() {
	return order_regdate;
}
public cartListVO setOrder_regdate(Date order_regdate) {
	this.order_regdate = order_regdate;
	return this;
}
}
