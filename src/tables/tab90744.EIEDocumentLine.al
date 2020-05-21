table 90744 "EIE Document Line"
{
    fields
    {
        field(1; "Document No."; Code[20]) { }
        field(2; "Line No."; Integer) { }
        field(3; "Example No."; Code[20]) { TableRelation = "EIE Example"; }
        field(4; "Egg Date"; Date) { }
        field(6; Quantity; Decimal) { DecimalPlaces = 0 : 0; }
        field(7; "Example Description"; Text[50])
        {
            CalcFormula = Lookup ("EIE Example".Description WHERE("No." = FIELD("Example No.")));
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.") { Clustered = true; }
    }
}
