package com.example.hi1031webshopevariant.business;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@EqualsAndHashCode
public class User {
  @Getter @Setter private String username;

  @Getter @Setter private String password;

  protected User(String username, String password) {
    this.username = username;
    this.password = password;
  }
}
