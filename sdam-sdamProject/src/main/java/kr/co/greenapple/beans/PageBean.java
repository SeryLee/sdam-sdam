package kr.co.greenapple.beans;

public class PageBean {

	//최소 페이지 번호
	private int min;
	//최대 페이지 번호
	private int max;
	//이전 버튼의 페이지 번호
	private int prevPage;
	//다음 버튼의 페이지 번호
	private int nextPage;
	//현재 페이지 개수
	private int pageCnt;
	//현재 페이지 번호
	private int currentPage;
	
	//contentCnt : 전체글 개수
	//currentPage : 현재 글 번호
	//contentPageCnt : 페이지당 글의 개수
	//paginationCnt : 페이지 버튼의 개수
	public PageBean(int contentCnt, int currentPage, int contentPageCnt, int paginationCnt) {
		
		//현재 페이지 번호
		this.currentPage = currentPage;
		//전체 페이지 개수
		pageCnt = contentCnt / contentPageCnt;
		
		if(contentCnt % contentPageCnt > 0) {
			pageCnt++; //나머지 페이지가 들어갈 페이지단위가 하나 더 필요하니까
		}
		
		
		min = (currentPage - 1) / contentPageCnt * contentPageCnt + 1;
		max = min + paginationCnt -1;
		
		//만약 max 페이지가 전체 페이지 수 보다 크다면 전체 페이지 수를 max값으로 설정
		if(max > pageCnt) { //페이지버튼이 전체 페이지수를 넘어가지 않게
			max = pageCnt;
		}
		
		prevPage = min - 1;
		nextPage = max + 1;
		if(nextPage > pageCnt) { //마지막 페이지버튼
			nextPage = pageCnt;
		}
	}
	
	public int getMin() {
		return min;
	}
	public int getMax() {
		return max;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public int getCurrentPage() {
		return currentPage;
	}
}
