package com.example.hi1031webshopevariant.business;

import com.example.hi1031webshopevariant.database.ItemDB;
import com.example.hi1031webshopevariant.ui.ItemDto;

import java.util.Collection;

public class ItemHandler {

  public static Collection<ItemDto> getAll() {
    Collection<Item> c = ItemDB.findAllItems();
    return c.stream().map(ItemHandler::toDto).toList();
  }

  public static ItemDto getById(Integer id) {
    Item item =
        ItemDB.findById(id)
            .orElseThrow(
                () ->
                    new IllegalArgumentException(
                        String.format("item with id %s does not exist", id)));
    return toDto(item);
  }

  private static ItemDto toDto(Item item) {
    return new ItemDto(item.getId(), item.getName(), item.getPrice(), item.getDescription());
  }
}
