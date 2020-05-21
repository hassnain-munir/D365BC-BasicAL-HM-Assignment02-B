page 90744 "EIE Document List"
{
    Caption = 'Document List';
    PageType = List;
    Editable = false;
    SourceTable = "EIE Document Header";
    CardPageId = "EIE Document Card";
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = All; }
                field("Document Date"; "Document Date") { ApplicationArea = All; }
            }
        }
    }
}
