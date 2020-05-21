table 90742 "EIE Example Type"
{
    DataPerCompany = false;
    DrillDownPageID = "EIE Example Types";
    LookupPageID = "EIE Example Types";

    fields
    {
        field(1; "Code"; Code[20]) { }
        field(2; Description; Text[50]) { }
    }

    keys
    {
        key(Key1; "Code") { Clustered = true; }
    }
}
