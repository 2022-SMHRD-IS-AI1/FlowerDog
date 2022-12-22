package Model;

public class BoardDTO {
	
	private int Number;
	private String Title;
	private String Writer;
	private String Time;
	private String content;
	
	public BoardDTO() {}
	
	
	public BoardDTO(String title, String writer, String content) {
		super();
		Title = title;
		Writer = writer;
		this.content = content;
	}
	
	// 게시글 읽을 때 쓰려고 만듦
	public BoardDTO(String title, String writer) {
		super();
		Title = title;
		Writer = writer;
	}


	// 작성 후 저장
	public BoardDTO(int number, String title, String writer, String time, String content) {
		this.Number = number;
		this.Title = title;
		this.Writer = writer;
		this.Time = time;
		this.content = content;
	}
	
	// 작성 전 저장
	public BoardDTO(String title, String writer, String time, String content) {
		this.Title = title;
		this.Writer = writer;
		this.Time = time;
		this.content = content;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getNumber() {
		return Number;
	}

	public void setNumber(int number) {
		Number = number;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getWriter() {
		return Writer;
	}

	public void setWriter(String writer) {
		Writer = writer;
	}

	public String getTime() {
		return Time;
	}

	public void setTime(String time) {
		Time = time;
	}
	
	
	

}
