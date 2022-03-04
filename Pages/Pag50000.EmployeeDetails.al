page 50000 "Employee Details "
{
    ApplicationArea = All;
    Caption = 'Employee Details ';
    PageType = List;
    SourceTable = "Employee Details  ";
    UsageCategory = Administration;
    CardPageId = 50001;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Employee ID "; Rec."Employee ID ")
                {
                    ToolTip = 'Specifies the value of the Employee ID  field.';
                    ApplicationArea = All;
                }
                field("Employee Name "; Rec."Employee Name ")
                {
                    ToolTip = 'Specifies the value of the Employee Name  field.';
                    ApplicationArea = All;
                }
                field("Employee Type"; Rec."Employee Type")
                {
                    ToolTip = 'Specifies the value of the Employee Type field.';
                    ApplicationArea = All;
                }
                field("Emp Contact No."; Rec."Emp Contact No.")
                {
                    ToolTip = 'Specifies the value of the Emp Contact No. field.';
                    ApplicationArea = All;
                }
                field("EmployeeBirth Date"; Rec."EmployeeBirth Date")
                {
                    ToolTip = 'Specifies the value of the EmployeeBirth Date field.';
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ToolTip = 'Specifies the value of the Department field.';
                    ApplicationArea = All;
                }
                field(Salary; Rec.Salary)
                {
                    ToolTip = 'Specifies the value of the Salary field.';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(OnPrint)
            {
                Image = Print;
                trigger OnAction()
                var
                    TestemployeeFilters: codeunit testEmployeeFilters;
                begin
                    TestemployeeFilters.Run();
                end;
            }
        }
    }
}
