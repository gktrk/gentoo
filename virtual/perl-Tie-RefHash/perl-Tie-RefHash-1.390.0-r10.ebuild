# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Virtual for ${PN#perl-}"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 ppc ppc64 sparc x86 ~x64-cygwin ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

RDEPEND="
	|| ( =dev-lang/perl-5.30* =dev-lang/perl-5.28* =dev-lang/perl-5.26* =dev-lang/perl-5.24* ~perl-core/${PN#perl-}-${PV} )
	dev-lang/perl:=
	!<perl-core/${PN#perl-}-${PV}
	!>perl-core/${PN#perl-}-${PV}-r999
"