page 90741 "EIE Example Card"
{
    Caption = 'Example Card';
    PageType = Card;
    SourceTable = "EIE Example";
    UsageCategory = Documents;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    trigger OnAssistEdit();
                    begin
                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field(Description; Description) { ApplicationArea = All; }
                field("Example Type Code"; "Example Type Code") { ApplicationArea = All; }
            }
        }
    }
}
