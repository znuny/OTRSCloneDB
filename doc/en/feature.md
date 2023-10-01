# Functionality

This package provides the 'CloneDB' feature. It clones a Znuny source database into a target database, possibly on a different RDBMS. This script clones a Znuny database into an empty target database, even on another database platform. It will dynamically get the list of tables in the source DB, and copy the data of each table to the target DB.

## Usage

### Cloning a Database

The goal of this example is to clone current database into another database engine.

Configure target database settings for this package (CloneDB).

The following parameters should be configured:

- TargetDatabaseHost
- TargetDatabase
- TargetDatabaseUser
- TargetDatabasePw
- TargetDatabaseType

Where *TargetDatabaseHost* is the host name or ip address of the target system, T*argetDatabase* is the name if the target database, *TargetDatabaseUser* is the name of the user that connects to the target database, *TargetDatabasePw* is the password of the user, be aware that the field is not masked and it is stored in plain text, *TargetDatabaseType* is the type of the target database (mysql, postgresql or oracle).

On *CloneDB::TargetDBSettings* for Oracle you might want to configure extra parameters like:

- TargetDatabaseSID
- TargetDatabasePort

If they are not set, the default values (XE and 1521 respectively) will be used.


And please be aware to include the needed settings on the *Config.pm* file:

```shell
    $ENV{ORACLE_HOME}
    $ENV{NLS_DATE_FORMAT}
    $ENV{NLS_LANG}
```

- TargetDatabaseDriver

If not set, the default value "SQL Server" will be used.

If you don't have access to the graphical user interface of the source Znuny system, for example during a migration, you can also perform the configuration directly in *Kernel/Config.pm* like this:

```perl
   Self->{'CloneDB::TargetDBSettings'} =  {
   'TargetDatabaseHost' => 'localhost',
   'TargetDatabaseType' => 'mysql',
   'TargetDatabase'     => 'znuny_target',
   'TargetDatabaseUser' => 'znuny_target'
   'TargetDatabasePw'   => 'znuny_target',
   };
```

Configure source database settings for this package (CloneDB). The only one setting currently available is CloneDB::SkipTables that allows you to set a list of tables should be skipped on the clone DB process, this feature is useful for internal use tables like for example in Oracle with the 'htmldb_plan_table' that is generated when you click on the 'Explain' Tab on the Oracle Web interface. Please use just lower case for this setting.

Run the console command ``bin/znuny.Console.pl Maint::Database::Clone``.

It strongly recommended to do a read and check test before actually migrate the data, this can be done with the
``bin/znuny.Console.pl Maint::Database::Clone --dry-run``.

Note: After a dry run, you will need to empty the target database, as the script only works with an empty database.

Verify the result.
This add-on provides a simple way to clone data into a new freshly created target database of choice. It can copy your data between supported databases:

- oracle
- mysql
- mariadb
- postgres

This requries a clean target database.
