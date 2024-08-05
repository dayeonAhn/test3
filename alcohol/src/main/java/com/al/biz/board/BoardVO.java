package com.al.biz.board;

import java.util.Date;

public class BoardVO {
		private int idx;
		private String name;
		private String title;
		private String content;
		private Date postdate;
		private String visitcount;
		
		//페이징을 위한 추가
		private int startIndex = 1;
	    private int pageSize = 10;
		
		
		public int getStartIndex() {
			return startIndex;
		}


		public void setStartIndex(int startIndex) {
			this.startIndex = startIndex;
		}


		public int getPageSize() {
			return pageSize;
		}


		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
		}


		@Override
		public String toString() {
			return "BoardVO [idx=" + idx 
	                + ", name=" + name 
	                + ", title=" + title 
	                + ", content=" + content 
	                + ", postdate=" + postdate 
	                + ", visitcount=" + visitcount 
	                + "]";
		}


		public int getIdx() {
			return idx;
		}


		public void setIdx(int idx) {
			this.idx = idx;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getTitle() {
			return title;
		}


		public void setTitle(String title) {
			this.title = title;
		}


		public String getContent() {
			return content;
		}


		public void setContent(String content) {
			this.content = content;
		}


		public Date getPostdate() {
			return postdate;
		}


		public void setPostdate(Date postdate) {
			this.postdate = postdate;
		}


		public String getVisitcount() {
			return visitcount;
		}


		public void setVisitcount(String visitcount) {
			this.visitcount = visitcount;
		}
		
		
		
	
		
	
}
