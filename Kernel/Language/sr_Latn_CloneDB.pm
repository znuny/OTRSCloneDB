# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::sr_Latn_CloneDB;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # SysConfig
    $Self->{Translation}->{'List of tables should be skipped, perhaps internal DB tables. Please use lowercase.'} =
        'Lista tabela koje treba preskočiti, verovatno interne tabele baze podataka. Molimo koristite mala slova.';
    $Self->{Translation}->{'Log file for replacement of malformed UTF-8 data values.'} = 'Datoteka dnevnika za zamene neispravno formiranih UTF-8 vrednosti podataka.';
    $Self->{Translation}->{'Settings for connecting with the target database.'} = 'Postavke za povezivanje sa ciljnom bazom podataka.';
    $Self->{Translation}->{'Specifies which columns should be checked for valid UTF-8 source data.'} =
        'Određuje koje kolone treba proveriti za ispravni UTF-8 izvor podataka.';
    $Self->{Translation}->{'This setting specifies which table columns contain blob data as these need special treatment.'} =
        'Ova postavka određuje koje kolone u tabelama sadrže blob podatke jer njih treba posebno tretitati.';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    );

}

1;
