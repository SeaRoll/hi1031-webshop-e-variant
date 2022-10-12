package com.example.hi1031webshopevariant.business;

import com.example.hi1031webshopevariant.database.UserDB;
import com.example.hi1031webshopevariant.ui.UserDto;

public class UserHandler {
  public static UserDto loginUser(String username, String password) {
    User foundUser =
        UserDB.findByUsernamePassword(username, password)
            .orElseThrow(() -> new IllegalArgumentException("Username or password does not match"));
    return toDto(foundUser);
  }

  public static void registerUser(String username, String password) {
    UserDB.createUser(username, password);
  }

  private static UserDto toDto(User user) {
    return new UserDto(user.getUsername());
  }
}
