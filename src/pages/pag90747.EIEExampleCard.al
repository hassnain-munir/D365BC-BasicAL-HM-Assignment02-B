page 90747 "EIE Example Type Card"
{
    Caption = 'Example Type Card';
    PageType = Card;
    SourceTable = "EIE Example Type";
    UsageCategory = Documents;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code; Code) { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
            }
        }
    }
}
