package cz.czechitas.java2webapps.ukol5.entity;
import jakarta.validation.constraints.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class PersonForm {

    @NotBlank
    private String name;
    @NotBlank
    private String surname;
//    @Min(18)
//    @Max(150)
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @NotNull (message = "Prosím vyplňte datum narození. Věk musí být větší nebo rovno 18 let.")
    private LocalDate age;
//    private int age;
    @Email
    @NotBlank
    private String email;
    @AssertTrue
    private boolean termsAndConditions;
    private boolean printObituary;

    @NotBlank
    @Pattern(regexp="\\d{4}-\\d{4}-\\d{4}-\\d{4}", message="Musí být ve formátu čtyř čísel, pomlčka, čtyři čísla, atd.")
    private String card;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public LocalDate getAge() {
        return age;
    }

    public void setAge(LocalDate age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isTermsAndConditions() {
        return termsAndConditions;
    }

    public void setTermsAndConditions(boolean termsAndConditions) {
        this.termsAndConditions = termsAndConditions;
    }

    public boolean isPrintObituary() {
        return printObituary;
    }

    public void setPrintObituary(boolean printObituary) {
        this.printObituary = printObituary;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }
}
