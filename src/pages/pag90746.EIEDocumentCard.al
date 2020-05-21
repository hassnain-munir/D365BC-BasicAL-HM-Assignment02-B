page 90746 "EIE Document Card"
{
    Caption = 'Document Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "EIE Document Header";
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; "Document Date") { ApplicationArea = All; }
                field("No. Series"; "No. Series") { ApplicationArea = All; }
                field("Posting Date"; "Posting Date") { ApplicationArea = All; }
                field("No. Printed"; "No. Printed") { ApplicationArea = All; }
            }
            part(New; "EIE Document Line Subpage") { ApplicationArea = All; }
        }
    }
}