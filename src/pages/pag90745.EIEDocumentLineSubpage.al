page 90745 "EIE Document Line Subpage"
{
    Caption = 'Document Line Subpage';
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "EIE Document Line";
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.") { ApplicationArea = All; }
                field("Document Description"; "Example Description") { ApplicationArea = All; }
                field("Egg Date"; "Egg Date") { ApplicationArea = All; }
                field(Quantity; Quantity) { ApplicationArea = All; }
            }
        }
    }
}
