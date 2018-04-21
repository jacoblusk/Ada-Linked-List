generic
    type T is private;
package Linked_List is
    type Node;
    type Node_Ref is access Node;

    type Node is record
        Value : T;
        Next : Node_Ref;
    end record;

    type List is record
        Head: Node_Ref;
        Length: Integer := 0;
    end record;
    
    procedure Add_Node(The_List: in out List; New_Node: in Node_Ref);
end Linked_List;
