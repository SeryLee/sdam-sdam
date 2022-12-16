package kr.co.greenapple.pager;

import java.util.ArrayList;
import java.util.List;

public class Pager {
		
	private int page = 1;
	private int perPage = 9; //한 페이지당 수
	private float total;
	private int perGroup = 5; //한 페이지에 한번에 보여주는 수
	
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public int getPerGroup() {
		return perGroup;
	}
	public void setPerGroup(int perGroup) {
		this.perGroup = perGroup;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	
	//
	public int getPrev() {
		return page <= perGroup ? 1 : (((page-1)/perGroup)-1)*perGroup+1;
	}			// 0부터	  페이지그룹이동
	//(((page-1)/perGroup)-0)*perGroup+1; -> 현재 페이지로
	
	public int getNext() {
		int next = (((page-1)/perGroup)+1)*perGroup+1;
		int last = getLast();
		return next < last ? next : last; //존재하지 않는 페이지까지 가는걸 방지
	}
	
	public int getLast() {
		return (int) Math.ceil(total/perPage);
	}
	
	
	public List<Integer> getList() {
		List<Integer> list = new ArrayList<Integer>();
		
		int startPage = (((page - 1) / perGroup) + 0) * perGroup + 1;
		
		for(int index=startPage; index < (startPage + perGroup) && index <= getLast(); index++)
			list.add(index);
		
		if(list.isEmpty())
			list.add(1);
		
		return list;
	}
}
