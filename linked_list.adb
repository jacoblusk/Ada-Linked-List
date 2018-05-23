with ada.text_io;

package body linked_list is
    procedure append(the_list: in out list; value: in t) is
        temp_node : node_ptr;
        new_node : node_ptr;
    begin
        temp_node := the_list.head;
        new_node := new node'(value, null);
        if the_list.head = null then
            the_list.head := new_node;
        else
            while temp_node.next /= null loop
                temp_node := temp_node.next;
            end loop;
            temp_node.next := new_node;
        end if;
    end append;

    procedure prepend(the_list: in out list; value: in t) is
        new_node : node_ptr;
    begin
        new_node := new node'(value, the_list.head);
        the_list.head := new_node;
    end prepend;

    procedure remove(the_list: in out list; value: in t) is
        temp_node : node_ptr;
        prev_node : node_ptr;
    begin
        temp_node := the_list.head;
        iterate_loop:
        while temp_node /= null loop
            if temp_node.value = value then
                if temp_node = the_list.head then
                    the_list.head := temp_node.next;
                    free(temp_node);
                else
                    prev_node.next := temp_node.next;
                    free(temp_node);
                end if;
                exit iterate_loop;
            end if;
            prev_node := temp_node;
            temp_node := temp_node.next;
        end loop iterate_loop;
    end remove;

    procedure print(the_list: in list) is
        temp_node : node_ptr;
    begin
        temp_node := the_list.head;
        while temp_node /= null loop
            ada.text_io.put_line("value:" & image(temp_node.value));
            temp_node := temp_node.next;
        end loop;
    end print;
end linked_list;
