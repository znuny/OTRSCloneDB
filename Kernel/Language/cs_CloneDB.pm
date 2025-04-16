# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::cs_CloneDB;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # SysConfig
    $Self->{Translation}->{'Customizable system name. If empty, config item \'Home\' is being used for display.'} =
        '';
    $Self->{Translation}->{'Defines if Fred is visible or hidden.'} = '';
    $Self->{Translation}->{'Defines the height of the Fred console in pixel.'} = '';
    $Self->{Translation}->{'Defines the log path for Freds logs.'} = '';
    $Self->{Translation}->{'Defines the opacity of the Fred console, e.g. 0.9 for 10% transparency.'} =
        '';
    $Self->{Translation}->{'Defines the width of the Fred console in percent.'} = '';
    $Self->{Translation}->{'Frontend module registration for the Fred object in the admin area.'} =
        '';
    $Self->{Translation}->{'Subscribe the output filter at the system.'} = '';
    $Self->{Translation}->{'This option defines the background color for the sytem name box.'} =
        '';
    $Self->{Translation}->{'Turn on if you want an real-time HTML-checker.'} = '';
    $Self->{Translation}->{'Turn on if you want an real-time SQL statement log function.'} =
        '';
    $Self->{Translation}->{'Turn on if you want the translation debugger.'} = '';
    $Self->{Translation}->{'Turn on if you want to see the STDERRLog.'} = '';
    $Self->{Translation}->{'Turn on if you want to see the data in the environment of the layout object.'} =
        '';
    $Self->{Translation}->{'Turn on if you want to see the data in the server side session object.'} =
        '';
    $Self->{Translation}->{'Turn on if you want to use the Fred console.'} = '';
    $Self->{Translation}->{'Turn on if you want to use the config log mechanism.'} = '';
    $Self->{Translation}->{'Turn on if you want to use the config switch mechanism.'} = '';


    push @{ $Self->{JavaScriptStrings} //= [] }, (
    );

}

1;
