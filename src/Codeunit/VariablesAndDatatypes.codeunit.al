codeunit 55100 VariablesAndDatatypes
{
    trigger OnRun()
    begin
        //Message('The value of %1 is %2', 'LoopNo', LoopNo);
        String1 := 'HelloWorldOfManyManyCharactersInTheString';
        String2 := CopyStr(string1, 1, MaxStrLen(string2));
        Message(string2);
    end;

    var
        Color: Option Red,Green,Blue;
        LoopNo: Integer;
        MyDate: Date;
        MyText: Text;
        string1: Text[60];
        string2: Text[30];
        LoopNoDec: Decimal;

}