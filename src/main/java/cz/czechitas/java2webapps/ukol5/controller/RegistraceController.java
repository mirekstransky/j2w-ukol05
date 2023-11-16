package cz.czechitas.java2webapps.ukol5.controller;

import cz.czechitas.java2webapps.ukol5.entity.Item;
import cz.czechitas.java2webapps.ukol5.entity.PersonForm;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;
import java.util.List;
import java.util.Random;


/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  private final Random random = new Random();
  private final List<Item> seznamItem = List.of(
          new Item("Darth Vader","dart-vader.jpg","Dark side power","Light-saber","Power of telekinesis","Relationship with Luke Skywalker","Moral Conflicts", "darth-vader"),
          new Item("Palpatine","palpatine.jpg","Master of the Sith Order","Force lightning","Manipulation and Deception","Overestimation of His Own Power","Vulnerability to Physical Contact", "palpatine"),
          new Item("Darth Maul","darth-maul.jpg","Dark side power","Mastery of Combat Arts","Physical Abilities","Absence of a Reliable Teacher","Overconfidence", "darth-maul")
  );

  @GetMapping("/")
  public ModelAndView index() {
      ModelAndView modelAndView = new ModelAndView("formular");
      modelAndView.addObject("item", seznamItem);
      return modelAndView;
  }

  @GetMapping("/registration/{adresa}")
  public ModelAndView indexForm(@PathVariable String adresa) {
    ModelAndView modelAndView = new ModelAndView("registration");
    modelAndView.addObject("form", new PersonForm());
    modelAndView.addObject("image", adresa);
//    modelAndView.addObject("enemy", captionName);
    return modelAndView;  }

  @PostMapping("/registration/{adresa}")
  public Object form(@PathVariable String adresa,@Valid @ModelAttribute("form") PersonForm form, BindingResult bindingResult) {

    if (bindingResult.hasErrors()) {
//      return "registration";
      return new ModelAndView("registration")
              .addObject("image", adresa);
//              .addObject("enemy",captionName);
    }
    LocalDate birthDate = form.getAge();
    Period period = birthDate.until(LocalDate.now());

    int age = period.getYears();
    if (age < 18) {
//      return new ModelAndView("lowAge");
      return "/lowAge";
    }
    return new ModelAndView("order")
            .addObject("kod", Math.abs(random.nextInt()))
            .addObject("person", form);
//            .addObject("enemy",captionName);
  };
}
