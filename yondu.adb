with Ada.Text_IO;

procedure Yondu is 
    type Num_Reavers is new Integer range 3 .. Integer'Last;
    type Num_Units is new Integer range 1 .. Integer'Last;

    reavers : Num_Reavers;
    units : Num_Units;

begin 
    Ada.Text_IO.Put_Line("How many reavers are there? ");
    reavers := Num_Reavers'Value(Ada.Text_IO.Get_Line);

    Ada.Text_IO.Put("How many units did they bring in? ");
    units := Num_Units'Value(Ada.Text_IO.Get_Line);

    Ada.Text_IO.Put_Line(Num_Reavers'Image(reavers) & " total reavers.");
    Ada.Text_IO.Put_Line(Num_Units'Image(units) & " total units.");

end Yondu;