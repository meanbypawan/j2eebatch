package model;

public class Review{
    public int rating;
    public String comment;
    public String date;
    public String reviewerName;
    public String reviewerEmail;
    private int id;
	public Review(int rating, String comment, String date, String reviewerName, String reviewerEmail) {
		this.rating = rating;
		this.comment = comment;
		this.date = date;
		this.reviewerName = reviewerName;
		this.reviewerEmail = reviewerEmail;
	}
	public Review() {}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getReviewerName() {
		return reviewerName;
	}
	public void setReviewerName(String reviewerName) {
		this.reviewerName = reviewerName;
	}
	public String getReviewerEmail() {
		return reviewerEmail;
	}
	public void setReviewerEmail(String reviewerEmail) {
		this.reviewerEmail = reviewerEmail;
	}

    
}
