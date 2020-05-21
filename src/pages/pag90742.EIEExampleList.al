page 90742 "EIE Example List"
{
    Caption = 'Example List';
    CardPageID = "EIE Example Card";
    Editable = false;
    PageType = List;
    SourceTable = "EIE Example";
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
                field("Example Type Code"; "Example Type Code") { ApplicationArea = All; }
            }
        }
    }
}
