package cn.xuhe.entity;

/**
 * Footer entity. @author MyEclipse Persistence Tools
 */

public class Footer implements java.io.Serializable {

	// Fields

	private String content;
	private String url;

	// Constructors

	/** default constructor */
	public Footer() {
	}

	/** full constructor */
	public Footer(String url) {
		this.url = url;
	}

	// Property accessors

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}