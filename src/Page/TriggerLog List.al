page 55108 "TriggerLog List"
{

    ApplicationArea = All;
    Caption = 'TriggerLog List';
    PageType = List;
    SourceTable = TriggerLog;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Object Name"; Rec."Object Name")
                {
                    ApplicationArea = All;
                }
                field("Trigger Name"; Rec."Trigger Name")
                {
                    ApplicationArea = All;
                }
                field(Timestamp1; Rec.Timestamp1)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
