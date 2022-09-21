package com.ssafit.model;

public class Review {
	private int reviewId;
	private String videoId;
	private String title;
	private String content;

	public Review(int reviewCnt, String videoId, String title, String content) {
		super();
		this.reviewId = reviewCnt;
		this.videoId = videoId;
		this.content = content;
		this.title = title;
	}

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}


	public String getContent() {
		return content;
	}
	
	public String getVideoId() {
		return videoId;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Review [reviewId=" + reviewId + ", videoId=" + videoId + ", content=" + content + ", title=" + title
				+ "]";
	}


}
