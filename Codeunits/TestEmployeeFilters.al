codeunit 50000 testEmployeeFilters
{
    trigger OnRun()
    begin
        Employee.Reset();
        Employee.SetRange("Employee ID ", 'EMP001');
        if Employee.FindFirst() then
            Message(StrSubstNo('Employee ID Is %1', Employee."Employee ID "));
    end;

    var
        Employee: Record "Employee Details  ";

}