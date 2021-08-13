INSERT INTO [CPILUNION].[dbo].[CTI_tb_Cliente]
           ([SidEmpresa]
           ,[SidCliente]
           ,[SnmCliente]
           ,[StrCIF]
           ,[StrDireccion]
           ,[SidMunicipio]
           ,[SidProvincia]
           ,[SidPais]
           ,[CodPostal]
           ,[StrTelefono1]
           ,[StrTelefono2]
           ,[StrFax]
           ,[StrContacto]
           ,[StrEmail]
           ,[TipoCliente]
           ,[FchAlta]
           ,[FchBaja]
           ,[SidUsrAlta]
           ,[FchUsrAlta]
           ,[SidUsrModif]
           ,[FchUsrModif])
SELECT [SidEmpresa]
      ,[SidCliente]
      ,[SnmCliente]
      ,[StrCIF]
      ,[StrDireccion]
      ,[SidMunicipio]
      ,[SidProvincia]
      ,[SidPais]
      ,[CodPostal]
      ,[StrTelefono1]
      ,[StrTelefono2]
      ,[StrFax]
      ,[StrContacto]
      ,[StrEmail]
      ,[TipoCliente]
      ,[FchAlta]
      ,[FchBaja]
      ,[SidUsrAlta]
      ,[FchUsrAlta]
      ,[SidUsrModif]
      ,[FchUsrModif]
  FROM [CPILUNION].[dbo].[CPCliente] 
  WHERE SidEmpresa<>'' and SidCliente<>'999999' and GETDATE() between FchAlta and ISNULL(FchBaja,GETDATE()) and SidEmpresa in (select SidEmpresa from CPEmpresa where BolActivo=1)
  