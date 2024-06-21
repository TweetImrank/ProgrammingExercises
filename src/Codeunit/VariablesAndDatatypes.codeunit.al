codeunit 55100 VariablesAndDatatypes
{
    trigger OnRun()
    begin
        Message('The value of %1 is %2', 'LoopNo', LoopNo);
    end;

    var
        Color: Option Red,Green,Blue;
        LoopNo: Integer;
        MyDate: Date;
        MyText: Text;
        LoopNoDec: Decimal;
}