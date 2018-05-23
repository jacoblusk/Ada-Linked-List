with ada.unchecked_deallocation;

generic
    type t is private;
    with function image(item : in t) return string;
package linked_list is
    type node;
    type node_ptr is access node;

    type node is record
        value : t;
        next : node_ptr;
    end record;

    type list is record
        head: node_ptr;
        length: integer := 0;
    end record;

    procedure append(the_list: in out list; value: t);
    procedure remove(the_list: in out list; value: t);
    procedure print(the_list: in list);
    procedure free is new ada.unchecked_deallocation(
        object => node, name => node_ptr);
end linked_list;
