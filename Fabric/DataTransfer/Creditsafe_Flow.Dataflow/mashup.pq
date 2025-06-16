[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Table4 = let
  Source = Excel.Workbook(Web.Contents("https://admincontrol2000-my.sharepoint.com/personal/sturla_steine_admincontrol_com/Documents/20240819_Data_Matrix_UseCase.xlsx"), null, true),
  #"Navigation 1" = Source{[Item = "Table4", Kind = "Table"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 1", {{"Account_ID", type text}, {"Account_Name", type text}, {"Billing_Country", type text}, {"Portal_ID", Int64.Type}, {"Portal_Name", type text}, {"Organization_Type", type text}, {"Portal_Date_Created", type date}, {"Industry_Coalesce", Int64.Type}, {"Industry_Names_Coalesce", type text}, {"Number_of_Employees", Int64.Type}, {"Salesforce_Number_of_Employees", Int64.Type}, {"AoU_ID", Int64.Type}, {"AoU_Name", type text}, {"Use_Case", type text}, {"Matrix_Inclusion_Value", Int64.Type}, {"AoU_SCRUBBED", type text}, {"Matrix_Inclusion_Value_Update", Int64.Type}})
in
  #"Changed column type";
