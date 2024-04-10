package pet.join;

import java.util.Date;

public class productDTO {
	public String pro_num;
	public String pro_name;
	public String pro_kind;
	public String pro_content;
	public String pro_img;
	public String pro_price;
	public String pro_sale;
	public Date pro_regdate;
	
	
	public String getPro_num() {
		return pro_num;
	}
	public productDTO setPro_num(String pro_num) {
		this.pro_num = pro_num;
		return this;
	}
	public String getPro_name() {
		return pro_name;
	}
	public productDTO setPro_name(String pro_name) {
		this.pro_name = pro_name;
		return this;
	}
	public String getPro_kind() {
		return pro_kind;
	}
	public productDTO setPro_kind(String pro_kind) {
		this.pro_kind = pro_kind;
		return this;
	}
	public String getPro_content() {
		return pro_content;
	}
	public productDTO setPro_content(String pro_content) {
		this.pro_content = pro_content;
		return this;
	}
	public String getPro_img() {
		return pro_img;
	}
	public productDTO setPro_img(String pro_img) {
		this.pro_img = pro_img;
		return this;
	}
	public String getPro_price() {
		return pro_price;
	}
	public productDTO setPro_price(String pro_price) {
		this.pro_price = pro_price;
		return this;
	}
	public String getPro_sale() {
		return pro_sale;
	}
	public productDTO setPro_sale(String pro_sale) {
		this.pro_sale = pro_sale;
		return this;
	}
	public Date getPro_regdate() {
		return pro_regdate;
	}
	public productDTO setPro_regdate(Date pro_regdate) {
		this.pro_regdate = pro_regdate;
		return this;
	}
}
