table 55101 TriggerLog
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(2; "Object Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; "Trigger Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(4; Timestamp1; DateTime)
        {
            Caption = 'Timestamp';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    procedure InsertLogEntry(ObjectName: Text[100]; TriggerName: Text[100])
    var
        TriggerLog: Record TriggerLog;
        TriggerLogLast: Record TriggerLog;
        EntryNo: Integer;
    begin

        if TriggerLogLast.FindLast() then
            EntryNo := TriggerLogLast."Entry No." + 1
        else
            EntryNo := 1;

        TriggerLog."Entry No." := EntryNo;
        TriggerLog."Object Name" := ObjectName;
        TriggerLog."Trigger Name" := TriggerName;
        TriggerLog.Timestamp1 := CurrentDateTime;
        TriggerLog.Insert();
    end;

    procedure ClearLogEntries()
    var
        TriggerLog: Record TriggerLog;
    begin
        if not TriggerLog.IsEmpty then
            TriggerLog.DeleteAll();
    end;



}