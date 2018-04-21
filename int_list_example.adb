with Ada.Text_IO;
with Linked_List;

procedure Int_List_Example is
    package Int_List is new Linked_List(T => Integer);
    My_List: Int_List.List;
    New_Node: Int_List.Node_Ref;
begin
    New_Node := new Int_List.Node'(1, null);
    Int_List.Add_Node(My_List, New_Node);

    Ada.Text_IO.Put_Line("Added new node with value: " & Integer'Image(New_Node.Value));
end Int_List_Example;
