# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit cmake-utils

DESCRIPTION="A clean, light window manager"
HOMEPAGE="https://ctwm.org/"
SRC_URI="${HOMEPAGE}dist/${P}.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~x86-fbsd"

RDEPEND="
	x11-libs/libICE
	x11-libs/libSM
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXmu
	x11-libs/libXpm
	x11-libs/libXt
"
DEPEND="
	${RDEPEND}
	app-arch/xz-utils
	app-text/rman
	virtual/jpeg
	x11-base/xorg-proto
"

src_prepare() {
	cmake-utils_src_prepare

	# implicit 'isspace'
	sed -i parse.c -e "/<stdio.h>/ a#include <ctype.h>" || die
}

src_configure() {
	mycmakeargs=(
		-DNOMANCOMPRESS=yes
		-DDOCDIR=/usr/share/doc/${PF}
	)

	cmake-utils_src_configure
}
