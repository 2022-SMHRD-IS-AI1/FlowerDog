package Model;

public class CommentDTO {
	
	int cmt_num;
	int com_num;
	String content;
	String date;
	int click;
	String writer;
	
	
	
	
	public CommentDTO(String content, String writer) {
		super();
		this.content = content;
		this.writer = writer;
	}
	
	


	public CommentDTO(String content, String date, String writer) {
		super();
		this.content = content;
		this.date = date;
		this.writer = writer;
	}




	public CommentDTO(int cmt_num, int com_num, String content, String date, int click, String writer) {
		super();
		this.cmt_num = cmt_num;
		this.com_num = com_num;
		this.content = content;
		this.date = date;
		this.click = click;
		this.writer = writer;
	}
	
	
	public int getCmt_num() {
		return cmt_num;
	}
	public void setCmt_num(int cmt_num) {
		this.cmt_num = cmt_num;
	}
	public int getCom_num() {
		return com_num;
	}
	public void setCom_num(int com_num) {
		this.com_num = com_num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getClick() {
		return click;
	}
	public void setClick(int click) {
		this.click = click;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
	
	
	
	
	

}
