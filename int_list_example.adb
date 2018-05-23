with ada.text_io;
with linked_list;

procedure int_list_example is
    package int_list is new linked_list(t => integer, image => integer'image);
    my_list: int_list.list;
begin
    int_list.append(my_list, 1);
    int_list.prepend(my_list, 2);
    int_list.print(my_list);
    int_list.remove(my_list, 2);
    int_list.print(my_list);
end int_list_example;
