use MyNetBookStore

--±¸·Ý
backup database MyNetBookStore
to disk = 'E:\sql workspace\SQLServerBackups\MyNetBookStore.Bak'
    with format,
      medianame = 'E_SQLServerBackups',
      name = 'Full Backup of MyNetBookStore';
