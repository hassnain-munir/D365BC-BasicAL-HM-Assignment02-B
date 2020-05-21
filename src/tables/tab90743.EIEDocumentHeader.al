table 90743 "EIE Document Header"
{
    fields
    {
        field(1; "No."; Code[20])
        {

            trigger OnValidate();
            begin
                IF "No." <> xRec."No." THEN BEGIN
                    ExampleSetup.GET;
                    NoSeriesManagement.TestManual(ExampleSetup."Document Nos.");
                    "No. Series" := '';
                END;
            end;
        }
        field(2; "Document Date"; Date) { }
        field(3; "No. Series"; Code[20]) { }
        field(10; "Posting Date"; Date) { CaptionML = ENU = 'Posting Date'; }
        field(13; "No. Printed"; Integer)
        {
            CaptionML = ENU = 'No. Printed';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.") { Clustered = true; }
    }

    trigger OnInsert();
    begin
        IF "No." = '' THEN BEGIN
            ExampleSetup.GET;
            ExampleSetup.TESTFIELD("Document Nos.");
            NoSeriesManagement.InitSeries(ExampleSetup."Document Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        END;

        InitRecord;
    end;

    PROCEDURE AssistEdit(OldDocumentHeader: Record "EIE Document Header"): Boolean;
    var
        DocumentHeader: Record "EIE Document Header";
    begin
        WITH DocumentHeader DO BEGIN
            DocumentHeader := Rec;
            ExampleSetup.GET;
            ExampleSetup.TESTFIELD("Document Nos.");
            IF NoSeriesManagement.SelectSeries(ExampleSetup."Document Nos.", OldDocumentHeader."No. Series", "No. Series") THEN BEGIN
                NoSeriesManagement.SetSeries("No.");
                Rec := DocumentHeader;
                EXIT(TRUE);
            END;
        END;
    end;

    PROCEDURE InitRecord();
    begin
        IF "Posting Date" = 0D THEN
            "Posting Date" := WORKDATE;
        "Document Date" := WORKDATE;
        ExampleSetup.GET;
    end;

    var
        NoSeriesManagement: Codeunit NoSeriesManagement;
        ExampleSetup: Record "EIE Example Setup";
        DocumentHeader: Record "EIE Document Header";
        DocumentLine: Record "EIE Document Line";
}
