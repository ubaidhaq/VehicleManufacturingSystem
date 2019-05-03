INSERT INTO Department
select * FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0', 'Excel 12.0;Database=D:\project.xlsx;HDR=YES', 'SELECT * FROM [Sheet1$]')
