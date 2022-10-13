package com.example.hi1031webshopevariant.business;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Item {
  private Integer id;
  private String name;
  private Integer price;
  private String description;

  protected Item(Integer id, String name, Integer price, String description) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.description = description;
  }
}
