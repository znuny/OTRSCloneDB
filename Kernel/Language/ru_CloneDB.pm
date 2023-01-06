# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::ru_CloneDB;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # SysConfig
    $Self->{Translation}->{'List of tables should be skipped, perhaps internal DB tables. Please use lowercase.'} =
        'Список таблиц которые следует пропускать, возможно, внутренние таблицы БД. Используйте нижний регистр.';
    $Self->{Translation}->{'Log file for replacement of malformed UTF-8 data values.'} = 'Файл журнала для замены неверных значений данных UTF-8.';
    $Self->{Translation}->{'Settings for connecting with the target database.'} = 'Настройки для соединения с целевой базой данных.';
    $Self->{Translation}->{'Specifies which columns should be checked for valid UTF-8 source data.'} =
        'Указывает, какие столбцы следует проверять для допустимых исходных данных UTF-8.';
    $Self->{Translation}->{'This setting specifies which table columns contain blob data as these need special treatment.'} =
        'Этот параметр указывает, какие столбцы таблицы содержат данные BLOB, так как они требуют специальной обработки.';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    );

}

1;
