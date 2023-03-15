package de.aracom.k8s.bean;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity(name="games")
public class Games {
    @Id
    @Column(name="game_rank")
    private String rank;
    @Column(name="game_score")
    private String score;
    @Column(name="game_title")
    private String title;
    @Column(name="game_release_date")
    private String releaseDate;
    @Column(name="game_summary")
    private String summary;
    @Column(name="game_image_url")
    private String imageUrl;

    public Games() {}
    public Games(String rank, String score, String title, String releaseDate, String summary, String imageUrl) {
        this.rank = rank;
        this.score = score;
        this.title = title;
        this.releaseDate = releaseDate;
        this.summary = summary;
        this.imageUrl = imageUrl;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return super.toString();
    }

}
