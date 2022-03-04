table 50001 "Item Master"
{
    Caption = 'Item Master';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3; Description2; Text[30])
        {
            Caption = 'Description2';
            DataClassification = ToBeClassified;
        }
        field(4; "Base Unit Of Measure "; Code[10])
        {
            Caption = 'Base Unit Of Measure ';
            DataClassification = ToBeClassified;
        }
        field(5; "Assebly Bom"; Boolean)
        {
            Caption = 'Assebly Bom';
            DataClassification = ToBeClassified;
        }
        field(6; Inventory; Decimal)
        {
            Caption = 'Inventory';
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entries ".Quantity where("Item No. " = field("No.")));
        }
        field(7; "Automatic Ext. Texts"; Boolean)
        {
            Caption = 'Automatic Ext. Texts';
            DataClassification = ToBeClassified;
        }
        field(8; "Created From Non Stock Items "; Boolean)
        {
            Caption = 'Created From Non Stock Items ';
            DataClassification = ToBeClassified;
        }
        field(9; "Item Category Code "; Code[10])
        {
            Caption = 'Item Category Code ';
            DataClassification = ToBeClassified;
        }
        field(10; "Total Sale Of Date"; Decimal)
        {
            Caption = 'Total Sale Of Date';
            DataClassification = ToBeClassified;
        }
        field(11; "Highest Sale Of Date"; Decimal)
        {
            Caption = 'Highest Sale Of Date';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
