page 90743 "EIE Example Types"
{
    Caption = 'Example Types';
    PageType = List;
    SourceTable = "EIE Example Type";
    Editable = false;
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Code) { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
            }
        }
    }
}
