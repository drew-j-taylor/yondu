with Ada.Text_IO;

procedure Yondu is 
    type Num_Reavers is new Integer range 3 .. Integer'Last;
    type Num_Units is new Integer range 1 .. Integer'Last;

    reavers : Num_Reavers;
    units : Num_Units;

    Units_After_Lotus, Units_After_Yondu, Units_After_Peter: Integer;
    Share_Crew, Share_Yondu, Share_Peter, Share_Rbf: Integer;

begin 
    Ada.Text_IO.Put_Line("How many reavers are there? ");
    reavers := Num_Reavers'Value(Ada.Text_IO.Get_Line);

    Ada.Text_IO.Put_Line("How many units did they bring in? ");
    units := Num_Units'Value(Ada.Text_IO.Get_Line);

    Units_After_Lotus := Integer(units) - 3 * (Integer(reavers) - 2);
    Units_After_Yondu := Integer(Float'Truncation(Float(Units_After_Lotus) * 0.87));
    Units_After_Peter := Integer(Float'Truncation(Float(Units_After_Yondu) * 0.89));

    Share_Crew := Units_After_Peter / Integer(reavers);
    Share_Yondu := Integer(Float'Truncation(Float(Units_After_Lotus) * 0.13)) + Share_Crew;
    Share_Peter := Integer(Float'Truncation(Float(Units_After_Yondu) * 0.11)) + Share_Crew;
    Share_Rbf := Units_After_Lotus - Share_Yondu - Share_Peter - Share_Crew * (Integer(reavers) - 2);

    Ada.Text_IO.Put_Line("Yondu's share: " & Integer'Image(Share_Yondu));
    Ada.Text_IO.Put_Line("Peter's share: " & Integer'Image(Share_Peter));
    Ada.Text_IO.Put_Line("Crew: " & Integer'Image(Share_Crew));
    Ada.Text_IO.Put_Line("RBF: " & Integer'Image(Share_Rbf));

end Yondu;
