package cz.czechitas.java2webapps.ukol5.controller;

import cz.czechitas.java2webapps.ukol5.entity.Item;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  private int price;
  private String name;
  private final List<Item> seznamItem = List.of(
          new Item("Dart Vader","dart-vader.jpg","Dark side power","Light-saber","Power of telekinesis","Relationship with Luke Skywalker","Moral Conflicts", 250),
          new Item("Palpatine","palpatine.jpg","Master of the Sith Order","Force lightning","Manipulation and Deception","Overestimation of His Own Power","Vulnerability to Physical Contact", 400),
          new Item("Dart Maul","darth-maul.jpg","Dark side power","Mastery of Combat Arts","Physical Abilities","Absence of a Reliable Teacher","Overconfidence", 150)
  );

  @GetMapping("/")
  public ModelAndView formular() {
    ModelAndView modelAndView = new ModelAndView("formular");
    modelAndView.addObject("item", seznamItem);
    return modelAndView;
  }

  @PostMapping("/")
  public String cena (int price,String name) {
    this.price = price;
    this.name = name;
    return "redirect:/";
  }

}
