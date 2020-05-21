page 90740 "Example Setup"
{
    Caption = 'Example Setup';
    PageType = Card;
    SourceTable = "EIE Example Setup";
    UsageCategory = Documents;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Example Nos."; "Example Nos.") { ApplicationArea = All; }
            }
        }
    }

    trigger OnOpenPage();
    begin
        IF NOT GET THEN INSERT;
    end;
}
