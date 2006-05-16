# $Id: Makefile.PL,v 1.2 2006/05/16 11:10:39 dk Exp $
use ExtUtils::MakeMaker;
WriteMakefile(
	'NAME'		=> 'sqlpp',
	'VERSION_FROM'	=> 'bin/sqlpp', 
	'dist'		=> {
		COMPRESS => 'gzip -9f',
		SUFFIX   => '.gz', 
		DIST_DEFAULT => 'all tardist',
	},
	'DISTNAME'	=> 'sqlpp',
	'EXE_FILES'	=> ['bin/sqlpp'],
	'ABSTRACT'	=> 'cpp-like SQL preprocessor',
	'AUTHOR'	=> 'Dmitry Karasik <dmitry@karasik.eu.org>',
);
