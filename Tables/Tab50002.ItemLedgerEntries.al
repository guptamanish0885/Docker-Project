table 50002 "Item Ledger Entries "
{
    Caption = 'Item Ledger Entries ';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No. "; Integer)
        {
            Caption = 'Entry No. ';
            DataClassification = ToBeClassified;
        }
        field(2; "Item No. "; Code[10])
        {
            Caption = 'Item No. ';
            DataClassification = ToBeClassified;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(4; "Location Code "; Text[30])
        {
            Caption = 'Location Code ';
            DataClassification = ToBeClassified;
        }
        field(5; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionMembers = Purchase,Sale;
            DataClassification = ToBeClassified;
        }
        field(6; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
        field(7; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = ToBeClassified;
        }
        field(8; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
        field(9; "Document No. "; Code[20])
        {
            Caption = 'Document No. ';
            DataClassification = ToBeClassified;
        }
        field(10; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Entry No. ")
        {
            Clustered = true;
        }
    }
}
