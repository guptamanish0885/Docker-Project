table 50000 "Employee Details  "
{
    Caption = 'Emplyee Details';
    DataClassification = ToBeClassified;

    fields
    {
        field(2; "Employee ID "; Code[20])
        {
            Caption = 'Employee ID ';
            DataClassification = ToBeClassified;
        }
        field(3; "Employee Name "; Text[120])
        {
            Caption = 'Employee Name ';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Message('HI');
            end;
        }
        field(4; "Employee Type"; Option)
        {
            Caption = 'Employee Type';
            OptionMembers = Regular,Temporary,ExtResource,OnContract;
            DataClassification = ToBeClassified;
        }
        field(5; "EmployeeBirth Date"; Date)
        {
            Caption = 'EmployeeBirth Date';
            DataClassification = ToBeClassified;
        }
        field(6; Salary; Decimal)
        {
            Caption = 'Salary';
            DataClassification = ToBeClassified;
        }
        field(7; Department; Option)
        {
            Caption = 'Department';
            OptionMembers = Accounts,HR,Techincal,Finance,Electrical,Maintainence;
            DataClassification = ToBeClassified;
        }
        field(8; "Emp Contact No."; Integer)
        {
            Caption = 'Emp Contact No.';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Message('hELLO');
            end;
        }
    }
    keys
    {
        key(PK; "Employee ID ")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        Message('U have inserted a new record');
    end;

    trigger OnDelete()
    begin
        Message('Do u want to delete ur reord ?');
    end;

    trigger OnRename()
    begin
        Message('Do u want to renmae ur record ?');
    end;

    trigger OnModify()
    begin
        Message(StrSubstNo('the reord has been modified %1', Rec."Employee ID "));
    end;
}
