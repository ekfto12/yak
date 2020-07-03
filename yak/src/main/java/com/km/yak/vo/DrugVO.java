package com.km.yak.vo;

public class DrugVO {
	
	private int count;
	private String d_route;
	private String d_shape;
	private String d_category;
	private String d_company;
	private String effects;
	private String d_code;
	private String drug_name;
	private String eng_name;
	private String ingredient;
	private String d_usage;
	private String precautins;
	private String side_effects;
	private int d_hit;
	
	
	
	public int getD_hit() {
		return d_hit;
	}
	public void setD_hit(int d_hit) {
		this.d_hit = d_hit;
	}
	public String getDrug_name() {
		return drug_name;
	}
	public void setDrug_name(String drug_name) {
		this.drug_name = drug_name;
	}
	public String getEng_name() {
		return eng_name;
	}
	public void setEng_name(String eng_name) {
		this.eng_name = eng_name;
	}
	public String getIngredient() {
		return ingredient;
	}
	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	public String getD_usage() {
		return d_usage;
	}
	public void setD_usage(String d_usage) {
		this.d_usage = d_usage;
	}
	public String getPrecautins() {
		return precautins;
	}
	public void setPrecautins(String precautins) {
		this.precautins = precautins;
	}
	public String getSide_effects() {
		return side_effects;
	}
	public void setSide_effects(String side_effects) {
		this.side_effects = side_effects;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getD_route() {
		return d_route;
	}
	public void setD_route(String d_route) {
		this.d_route = d_route;
	}
	public String getD_shape() {
		return d_shape;
	}
	public void setD_shape(String d_shape) {
		this.d_shape = d_shape;
	}
	public String getD_category() {
		return d_category;
	}
	public void setD_category(String d_category) {
		this.d_category = d_category;
	}
	public String getD_company() {
		return d_company;
	}
	public void setD_company(String d_company) {
		this.d_company = d_company;
	}
	public String getEffects() {
		return effects;
	}
	public void setEffects(String effects) {
		this.effects = effects;
	}
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	
	@Override
	public String toString() {
		return "DrugVO [eng_name=" + eng_name + ", ingredient=" + ingredient + ", d_usage=" + d_usage + ", precautins=" + precautins + ", side_effects=" + side_effects + ", effects=" + effects + ", count=" + count + ", d_route=" + d_route + ", d_shape=" + d_shape + ", d_category=" + d_category + ", d_company="
                + d_company + ", d_code=" + d_code + ", d_hit=" + d_hit + "]";
	}
	
}
