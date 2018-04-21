package body Linked_List is
    procedure Add_Node(The_List: in out List; New_Node: in Node_Ref) is
        Temp_Node : Node_Ref;
    begin
        Temp_Node := The_List.Head;
        if Temp_Node = null then
            The_List.Head := New_Node;
        else
            while Temp_Node.Next /= null loop
                Temp_Node := Temp_Node.Next;
            end loop;

            Temp_Node.Next := New_Node;
        end if;

    end Add_Node;
end Linked_List;
