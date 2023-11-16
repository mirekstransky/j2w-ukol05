package cz.czechitas.java2webapps.ukol5.entity;

public class Item {
    private String name;
    private String image;

    private String firstStrength;
    private String secondStrength;
    private String thirdStrength;
    private String firstWeakness;
    private String secondWeakness;
    private String url;



    public Item(String name, String image, String firstStrength, String secondStrength, String thirdStrength,
                String firstWeakness, String secondWeakness, String url) {
        this.name = name;
        this.image = image;
        this.firstStrength = firstStrength;
        this.secondStrength = secondStrength;
        this.thirdStrength = thirdStrength;
        this.firstWeakness = firstWeakness;
        this.secondWeakness = secondWeakness;
        this.url = url;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getFirstStrength() {
        return firstStrength;
    }

    public void setFirstStrength(String firstStrength) {
        this.firstStrength = firstStrength;
    }

    public String getSecondStrength() {
        return secondStrength;
    }

    public void setSecondStrength(String secondStrength) {
        this.secondStrength = secondStrength;
    }

    public String getThirdStrength() {
        return thirdStrength;
    }

    public void setThirdStrength(String thirdStrength) {
        this.thirdStrength = thirdStrength;
    }

    public String getFirstWeakness() {
        return firstWeakness;
    }

    public void setFirstWeakness(String firstWeakness) {
        this.firstWeakness = firstWeakness;
    }

    public String getSecondWeakness() {
        return secondWeakness;
    }

    public void setSecondWeakness(String secondWeakness) {
        this.secondWeakness = secondWeakness;
    }


}
