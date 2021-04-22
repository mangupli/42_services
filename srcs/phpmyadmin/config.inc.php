<?php

declare(strict_types=1);

$cfg['blowfish_secret'] = '|UM,3%kA,]M%!.lBYK]f#,KI?AMt~UA4_,`evf|KyjK+gQ_;=NP+lo)>k@Xw~!ZD';
$i = 0;
$i++;
$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['host'] = 'mysql-svc:3306';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
$cfg['TempDir'] = '/var/my_page/tmp/';
?>
