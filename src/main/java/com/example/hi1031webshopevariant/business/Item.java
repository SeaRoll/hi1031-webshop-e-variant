package com.example.hi1031webshopevariant.business;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Item {
  private Integer id;
  private String name;
  private Integer price;
  private String description;
}
