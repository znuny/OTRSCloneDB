# Configuration

## System Configuration Options

**CloneDB::BlobColumns**

This setting specifies which table columns contain blob data as these need special treatment.

**CloneDB::CheckEncodingColumns**

Specifies which columns should be checked for valid UTF-8 source data.

**CloneDB::LogFile**

Log file for replacement of malformed UTF-8 data values.

**CloneDB::SkipTables**

List of tables should be skipped, perhaps internal DB tables. Please use lowercase.

***CloneDB::TargetDBSettings***

## Configure target database settings for this package (CloneDB).

- TargetDatabaseHost
- TargetDatabase
- TargetDatabaseUser
- TargetDatabasePw
- TargetDatabaseType

Where "TargetDatabaseHost" is the host name or IP address of the target system, "TargetDatabase" is the name of the target database, "TargetDatabaseUser" is the name of the user for the target database, "TargetDatabasePw" is the password of the user, be aware that the field is not masked, and it is stored in plain text, "TargetDatabaseType" is the type of the target database (MySQL, Postgres or oracle).


```
Notes on Oracle:

On 'CloneDB::TargetDBSettings' for Oracle, you might want to configure extra parameters like:

 - TargetDatabaseSID
 - TargetDatabasePort

If they are not set, the default values (XE and 1521 respectively) will be used.
And please be aware to include the needed settings in the Config.pm file:

 - $ENV{ORACLE_HOME}
 - $ENV{NLS_DATE_FORMAT}
 - $ENV{NLS_LANG}
```

- TargetDatabaseDriver

If you don't have access to the graphical user interface of the source Znuny system, for example during a migration, you can also perform the configuration directly in ``Kernel/Config.pm`` like this:

```perl
$Self->{'CloneDB::TargetDBSettings'} = {
  'TargetDatabaseHost' => 'localhost',
  'TargetDatabaseType' => 'mysql',
  'TargetDatabase'  => 'znuny_target',
  'TargetDatabaseUser' => 'znuny_target'
  'TargetDatabasePw'  => 'znuny_target',
};
```

Configure source database settings for this package (CloneDB). The only one setting currently available is CloneDB::SkipTables that allows you to set a list of tables to be skipped during the cloning. This feature is useful for internal use tables, like for example in Oracle with the 'htmldb_plan_table' that is generated when you click on the 'Explain' Tab on the Oracle Web interface. Please use just lower case for this setting.


It strongly recommended doing a read and check test before actually migrating the data,
this can be done with the "--dry-run" option as:
``su - $OTRS_USER -c bin/otrs.Console.pl Maint::Database::Clone --dry-run``.
Remember to drop all tables from the target database, after a dry run or failure.

## Other System Configuration Options

### CloneDB::BlobColumns

This setting specifies which table columns contain blob data as these need special treatment.

### CloneDB::CheckEncodingColmns.

Specifies which columns should be checked for valid UTF-8 source data.

### CloneDB::LogFile

Log file for replacement of malformed UTF-8 data values.

### CloneDB::SkipTables

List of tables should be skipped, perhaps internal DB tables. Please use lowercase.

### CloneDB::TargetDBSettings

Settings for connecting with the target database.
